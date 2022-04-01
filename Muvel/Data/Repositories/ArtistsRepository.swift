import Foundation

class ArtistsRepository: ArtistsRepositoryProtocol {
    let service: DataService = LocalDataService()
    
    func getArtistsList(completion: @escaping ([Artist]) -> Void) {
        DispatchQueue.main.async {
            let artists: [Artist] = self.service.load(from: "artists_list.json")
            completion(artists)
        }
    }
    
    func getAstistDetails(artistId: String, completion: @escaping (Artist) -> Void) {
        
    }
}
