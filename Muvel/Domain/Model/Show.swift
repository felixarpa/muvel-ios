import Foundation

struct Show: Identifiable {
    let id: String
    let name: String
    let rawDate: String
    let date: Show.Date
    let ticketPrice: Price
    let travelPrice: Price
    let totalPrice: Price
    
    struct Date {
        let month: String
        let day: String
    }
}
