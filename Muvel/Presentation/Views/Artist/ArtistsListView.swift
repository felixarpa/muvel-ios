import SwiftUI

struct ArtistListView: View {
    
    @StateObject var viewModel = ArtistsViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    TextView("Your Artists", style: .headline)
                        .padding(.horizontal, 16)
                        .padding(.top, 48)
                    
                    ForEach(viewModel.artists) { artist in
                        NavigationLink {
                            ArtistView(artist: artist)
                        } label: {
                            ArtistRow(artist: artist)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .onAppear(perform: viewModel.getArtists)
            .background(.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.container, edges: .vertical)
            .navigationBarHidden(true)
        }
    }
}

struct ArtistListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListView()
    }
}
