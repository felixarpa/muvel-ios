import Foundation

class ArtistsRepository: ArtistsRepositoryProtocol {
    // TODO: inject
    private let service: DataService = RemoteDataService()
    
    func getArtistsList(completion: @escaping ([Artist]) -> Void) {
        DispatchQueue.main.async {
            self.service.load(from: "artists", completion: completion)
        }
    }
    
    func getAstistDetails(artistId: String, completion: @escaping (Artist) -> Void) {
        
    }
}
