import Foundation

class LocalDataService: DataService {
    func load<T: Decodable>(from path: String, completion: @escaping (T) -> Void) {
        let filename = "\(path)_list.json"
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try decoder.decode(T.self, from: data)
            completion(data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
