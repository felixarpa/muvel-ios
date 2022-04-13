import Foundation

class ShowsRepository: ShowsRepositoryProtocol {
    // TODO: inject
    private let service: DataService = LocalDataService()
    
    func getShowsList(artistId: String, completion: @escaping ([Show]) -> Void) {
        DispatchQueue.main.async {
            self.service.load(from: "shows") { (response: DataResponse<[Show]>) in
                switch response {
                case .failure:
                    completion([])
                case .success(let shows):
                    completion(shows)
                }
            }
        }
    }
    
    func getShowDetails(artistId: String, date: String, completion: @escaping (Show) -> Void) {
        
    }
}
