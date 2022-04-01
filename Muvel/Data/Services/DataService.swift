import Foundation

protocol DataService {
    func load<T: Decodable>(from filename: String) -> T
}
