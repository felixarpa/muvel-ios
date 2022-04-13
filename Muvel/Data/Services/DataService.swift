import Foundation

protocol DataService {
    func load<T: Decodable>(from path: String, completion: @escaping (DataResponse<T>) -> Void)
}

enum DataResponse<T> {
    case success(T)
    case failure(DataResponseError)
}

enum DataResponseError {
    case networkError
    case parsingError
    case fileError
}
