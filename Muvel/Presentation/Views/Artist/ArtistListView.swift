import SwiftUI

struct ArtistListView: View {
    
    @StateObject var viewModel = ViewModel()
    
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
            .onAppear(perform: viewModel.getArtistsList)
            .background(.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.container, edges: .vertical)
            .navigationBarHidden(true)
        }
    }
}

extension ArtistListView {
    class ViewModel: ObservableObject {
        @Published var artists = [Artist]()
        
        func getArtistsList() {
            self.artists = [
                Artist(id: "10", name: "Arctic Monkeys", imageUrl: "https://d3iln1l77n73l7.cloudfront.net/couch_images/attachments/000/084/141/original/41440968_10217957945604234_4650379761049141248_n.jpg?2019"),
                Artist(id: "30", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg"),
                Artist(id: "20", name: "Foo Fighters", imageUrl: "https://dynamicmedia.livenationinternational.com/Media/p/x/b/2e35b3c5-8167-42e7-b204-3318a55af99e.jpg?auto=webp&width=1507.2"),
                Artist(id: "40", name: "Lana del Rey", imageUrl: "https://dynamicmedia.livenationinternational.com/Media/n/i/e/6004a4f7-ac01-48e5-8160-11350193e1d8.jpg"),
                Artist(id: "11", name: "Arctic Monkeys", imageUrl: "https://d3iln1l77n73l7.cloudfront.net/couch_images/attachments/000/084/141/original/41440968_10217957945604234_4650379761049141248_n.jpg?2019"),
                Artist(id: "31", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg"),
                Artist(id: "21", name: "Foo Fighters", imageUrl: "https://dynamicmedia.livenationinternational.com/Media/p/x/b/2e35b3c5-8167-42e7-b204-3318a55af99e.jpg?auto=webp&width=1507.2"),
                Artist(id: "41", name: "Lana del Rey", imageUrl: "https://dynamicmedia.livenationinternational.com/Media/n/i/e/6004a4f7-ac01-48e5-8160-11350193e1d8.jpg"),
                Artist(id: "12", name: "Arctic Monkeys", imageUrl: "https://d3iln1l77n73l7.cloudfront.net/couch_images/attachments/000/084/141/original/41440968_10217957945604234_4650379761049141248_n.jpg?2019"),
                Artist(id: "32", name: "Felix Arpa", imageUrl: "https://i1.sndcdn.com/avatars-Wx61u2Y5LfEmZ75m-y6eHvQ-t500x500.jpg"),
                Artist(id: "22", name: "Foo Fighters", imageUrl: "https://dynamicmedia.livenationinternational.com/Media/p/x/b/2e35b3c5-8167-42e7-b204-3318a55af99e.jpg?auto=webp&width=1507.2"),
                Artist(id: "42", name: "Lana del Rey", imageUrl: "https://dynamicmedia.livenationinternational.com/Media/n/i/e/6004a4f7-ac01-48e5-8160-11350193e1d8.jpg")
                
            ]
        }
    }
}

struct ArtistListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListView()
    }
}
