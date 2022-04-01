import SwiftUI

struct ShowsListView: View {
    
    var artistId: String
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.shows) { show in
                ShowRow(show: show)
            }
        }
        .onAppear {
            self.viewModel.getShowsListFor(artistId: self.artistId)
        }
    }
}

extension ShowsListView {
    class ViewModel: ObservableObject {
        @Published var shows = [Show]()
        
        let useCase = UseCase()

        func getShowsListFor(artistId: String) {
            self.shows = [
                Show(id: "1",
                     name: "Primavera sound",
                     rawDate: "2022-06-14",
                     date: Show.Date(month: "Jun", day: "14"),
                     ticketPrice: Price(value: 12, label: "12€"),
                     travelPrice: Price(value: 34, label: "34€"),
                     totalPrice: Price(value: 46, label: "46€")),
                Show(id: "2",
                     name: "Bellaterra",
                     rawDate: "2022-10-11",
                     date: Show.Date(month: "Oct", day: "11"),
                     ticketPrice: Price(value: 84, label: "84€"),
                     travelPrice: Price(value: 42, label: "42€"),
                     totalPrice: Price(value: 126, label: "126€"))
            ]
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
