import Foundation

protocol ArtistsRepositoryProtocol {
    func getArtistsList(completion: @escaping ([Artist]) -> Void)
    func getAstistDetails(artistId: String, completion: @escaping (Artist) -> Void)
}
