import Foundation

struct Show: Identifiable, Decodable {
    let id: String
    let name: String
    let rawDate: String
    let date: Show.Date
    let ticketPrice: Price
    let travelPrice: Price
    let totalPrice: Price
    
    struct Date: Decodable {
        let month: String
        let day: String
    }
}
