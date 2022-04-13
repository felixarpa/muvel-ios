import Foundation

class RemoteDataService: DataService {
    enum Constants {
        static let BASE_URL = "https://felixarpa.appspot.com/"
    }
    
    private let urlSession: URLSession
    
    public init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }
    
    func load<T: Decodable>(from path: String, completion: @escaping (DataResponse<T>) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)\(path)") else { return }
        
        urlSession.dataTask(with: url) { data, response, error in
            if error != nil {
                completion(.failure(.networkError))
                return
            }
            
            if let response = response as? HTTPURLResponse, !(200..<300).contains(response.statusCode) {
                completion(.failure(.networkError))
                return
            }
            
            guard let data = data
            else {
                completion(.failure(.parsingError))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(T.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(.parsingError))
            }
        }
        
        .resume()
    }
}
