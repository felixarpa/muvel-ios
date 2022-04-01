import Foundation

class UseCase {
    func fetchArtists(_ completion: ([Artist]) -> Void) {
        let artists = [
            Artist(id: "id", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg")
        ]
        completion(artists)
    }
}
