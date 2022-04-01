import Foundation

class ArtistsViewModel: ObservableObject {
    @Published var artists = [Artist]()
    
    // TODO: inject
    private let artistsRepository: ArtistsRepositoryProtocol = ArtistsRepository()
    
    func getArtists() {
        artistsRepository.getArtistsList { [weak self] artists in
            self?.artists = artists
        }
    }
}
