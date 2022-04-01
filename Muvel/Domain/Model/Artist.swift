import Foundation

struct Artist: Identifiable, Decodable {
    let id: String
    let name: String
    let imageUrl: String
}
