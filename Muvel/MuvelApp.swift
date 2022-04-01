import SwiftUI

@main
struct MuvelApp: App {
    var body: some Scene {
        WindowGroup {
            ArtistView(
                artist: Artist(id: "id", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg")
            )
        }
    }
}
