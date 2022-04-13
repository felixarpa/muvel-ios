import Foundation

class ArtistsRepository: ArtistsRepositoryProtocol {
    // TODO: inject
    private let service: DataService = RemoteDataService()
    
    func getArtistsList(completion: @escaping ([Artist]) -> Void) {
        DispatchQueue.main.async {
            self.service.load(from: "artists") { (response: DataResponse<[Artist]>) in
                switch response {
                case .failure:
                    completion([])
                case .success(let artists):
                    completion(artists)
                }
            }
        }
    }
    
    func getAstistDetails(artistId: String, completion: @escaping (Artist) -> Void) {
        
    }
}
