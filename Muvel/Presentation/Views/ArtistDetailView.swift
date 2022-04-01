import SwiftUI

struct ArtistView: View {
    
    var artist: Artist
    
    var body: some View {
        ScrollView() {
            ArtistHeaderView(artist: artist)
            
            Spacer(minLength: 16)
            
            VStack(alignment: .leading) {
                TextView("Shows", style: .title)
                    .padding(.horizontal, 16)
                ShowsListView(artistId: artist.id)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(.black)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.container, edges: .vertical)
        .navigationTitle("Felix Arpa")
        
    }
}

extension ArtistView {
    class ViewModel: ObservableObject {
    }
}

struct ArtistView_Previews: PreviewProvider {
    static var previews: some View {
        let artist = Artist(id: "id", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg")
        return ArtistView(artist: artist)
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            .previewDisplayName("iPhone 13 Pro")
    }
}
