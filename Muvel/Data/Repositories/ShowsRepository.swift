import Foundation

class ShowsRepository: ShowsRepositoryProtocol {
    // TODO: inject
    private let service: DataService = LocalDataService()
    
    func getShowsList(artistId: String, completion: @escaping ([Show]) -> Void) {
        DispatchQueue.main.async {
            let shows: [Show] = self.service.load(from: "shows_list.json")
            completion(shows)
        }
    }
    
    func getShowDetails(artistId: String, date: String, completion: @escaping (Show) -> Void) {
        
    }
}
