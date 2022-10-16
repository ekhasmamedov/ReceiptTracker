import Foundation

struct Receipt: Identifiable {
    let transactionNumber: String
    let cardName: String
    let cardNumber: String
    let merchantName: String
    let date: String
    let time: String
    let price: Double
    let totalPrice: Double
    let tax: Double
    let authNumber: String
    
    var id: String {
        transactionNumber
    }
}
