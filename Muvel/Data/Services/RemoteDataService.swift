import Foundation

class RemoteDataService: DataService {
    enum Constants {
        static let BASE_URL = "https://felixarpa.appspot.com/"
    }
    
    private let urlSession: URLSession
    
    public init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }
    
    func load<T: Decodable>(from path: String, completion: @escaping (T) -> Void) {
        guard let url = URL(string: "\(Constants.BASE_URL)\(path)") else { return }
        urlSession.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(T.self, from: data)
                completion(response)
            } catch {
                fatalError("Couldn't parse response from \(url.absoluteString) as \(T.self):\n\(error)")
            }
        }.resume()
    }
    
    
}
