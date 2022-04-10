import Foundation

struct Receipt: Identifiable {
    let identifier: String
    let name: String
    
    var id: String {
        identifier
    }
}
