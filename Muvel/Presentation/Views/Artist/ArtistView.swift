import SwiftUI

struct ArtistView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var artist: Artist
    
    var backButton: some View {
        Image(systemName: "chevron.backward")
            .foregroundColor(.white)
            .onTapGesture {
                self.presentationMode.wrappedValue.dismiss()
            }
    }
    
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
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
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
