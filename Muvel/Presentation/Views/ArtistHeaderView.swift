import SwiftUI

struct ArtistHeaderView: View {
    var artist: Artist
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ImageView(withURL: artist.imageUrl)
                .frame(maxWidth: .infinity)
                .scaledToFill()
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.clear, .clear, .clear, .black]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
            TextView(artist.name, style: .headline)
                .padding(.horizontal, 16)
        }
    }
}

struct ArtistHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistHeaderView(
            artist: Artist(id: "id", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg")
        )
            .previewLayout(.fixed(width: 500, height: 500))
    }
}
