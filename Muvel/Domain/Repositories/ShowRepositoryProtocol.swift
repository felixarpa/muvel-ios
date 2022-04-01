import Foundation

protocol ShowRepositoryProtocol {
    func getShowsList(artistId: String, completion: @escaping ([Show]) -> Void)
    func getShowDetails(artistId: String, date: String, completion: @escaping (Show) -> Void)
}
