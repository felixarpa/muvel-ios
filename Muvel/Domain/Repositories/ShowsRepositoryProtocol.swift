import Foundation

protocol ShowsRepositoryProtocol {
    func getShowsList(artistId: String, completion: @escaping ([Show]) -> Void)
    func getShowDetails(artistId: String, date: String, completion: @escaping (Show) -> Void)
}
