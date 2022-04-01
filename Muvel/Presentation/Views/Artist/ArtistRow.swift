import SwiftUI

struct ArtistRow: View {
    var artist: Artist
    
    var body: some View {
        HStack {
            ImageView(withURL: artist.imageUrl)
                .frame(width: 60, height: 60, alignment: .leading)
                .clipShape(Circle())
                .padding(.leading, 16)
            TextView(artist.name, style: .subtitle)
                .padding(.leading, 8)
            Spacer()
            Image(systemName: "chevron.forward")
                .foregroundColor(.white)
                .padding(.trailing, 16)
        }
        .padding(.vertical, 8)
    }
}

struct ArtistRow_Previews: PreviewProvider {
    static var previews: some View {
        let artist = Artist(id: "id", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg")
        return ZStack {
            Color.black.ignoresSafeArea()
            ArtistRow(artist: artist)
        }
    }
}
