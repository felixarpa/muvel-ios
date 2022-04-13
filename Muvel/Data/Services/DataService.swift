import Foundation

protocol DataService {
    func load<T: Decodable>(from path: String, completion: @escaping (T) -> Void)
}
