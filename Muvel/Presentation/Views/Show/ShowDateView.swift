import SwiftUI

struct ShowDateView: View {
    var date: Show.Date
    
    var body: some View {
        VStack {
            TextView(date.month.uppercased(), style: .text)
                .padding(.top, 4)
                .frame(width: 50, height: 20, alignment: .center)
            TextView(date.day, style: .subtitle)
                .padding(.bottom, 8)
                .frame(width: 50, height: 20, alignment: .center)
        }
        .background(Color(red: 0.2, green: 0.2, blue: 0.25))

        .frame(width: 50, height: 50)
        .cornerRadius(10)
    }
}
