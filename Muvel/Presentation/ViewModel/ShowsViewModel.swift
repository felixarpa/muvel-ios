import Foundation

class ShowsViewModel: ObservableObject {
    @Published var shows = [Show]()
    
    // TODO: inject
    private let showsRepository: ShowsRepositoryProtocol = ShowsRepository()
    
    func getShows(artistId: String) {
        showsRepository.getShowsList(artistId: artistId) { [weak self] shows in
            self?.shows = shows
        }
    }
}
