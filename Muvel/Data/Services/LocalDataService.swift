import Foundation

class LocalDataService: DataService {
    func load<T: Decodable>(from path: String, completion: @escaping (DataResponse<T>) -> Void) {
        let filename = "\(path)_list.json"
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            completion(.failure(.fileError))
            return
        }
        
        guard let content = try? Data(contentsOf: file)
        else {
            completion(.failure(.fileError))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try decoder.decode(T.self, from: content)
            completion(.success(data))
        } catch {
            completion(.failure(.parsingError))
        }
    }
}
