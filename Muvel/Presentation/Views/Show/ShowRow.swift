import SwiftUI

struct ShowRow: View {
    var show: Show
    
    var body: some View {
        HStack {
            ShowDateView(date: show.date)
                .padding(.leading, 16)
            TextView(show.name, style: .subtitle)
            Spacer()
            TextView("\(show.ticketPrice.label) + \(show.travelPrice.label) =",
                     style: .text, color: Color(uiColor: .lightGray))
            TextView(show.totalPrice.label, style: .subtitle)
                .padding(.trailing, 16)
        }
    }
}

struct ShowRow_Previews: PreviewProvider {
    static var previews: some View {
        let show = Show(
            id: "1",
            name: "Primavera sound",
            rawDate: "2022-06-14",
            date: Show.Date(month: "Jun", day: "14"),
            ticketPrice: Price(value: 12, label: "12€"),
            travelPrice: Price(value: 34, label: "34€"),
            totalPrice: Price(value: 46, label: "46€"))
        ZStack {
            Color.black.ignoresSafeArea()
            ShowRow(show: show)
        }
        .previewLayout(.fixed(width: 500, height: 70))
    }
}
