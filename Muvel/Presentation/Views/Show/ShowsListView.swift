import SwiftUI

struct ShowsListView: View {
    
    var artistId: String
    @StateObject var viewModel = ShowsViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.shows) { show in
                ShowRow(show: show)
            }
        }
        .onAppear {
            self.viewModel.getShows(artistId: self.artistId)
        }
    }
}

struct ShowsListView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            ShowsListView(artistId: "")
        }
        .previewLayout(.fixed(width: 400, height: 140))
    }
}
