import Foundation

protocol ArtistRepositoryProtocol {
    func getArtistsList(completion: @escaping ([Artist]) -> Void)
    func getAstistDetails(artistId: String, completion: @escaping (Artist) -> Void)
}
