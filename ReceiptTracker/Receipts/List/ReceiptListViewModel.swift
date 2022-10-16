import Foundation
import Combine

class ReceiptListViewModel: ObservableObject {
    @Published var receipts: [Receipt] = []
    
    init() {
        fetchReceipts()
    }
    
    func fetchReceipts() {
        receipts = [
            Receipt(transactionNumber: "123123",
                    cardName: "MasterCard",
                    cardNumber: "**********4342",
                    merchantName: "Winners",
                    date: "15/02/12",
                    time: "13:06:16",
                    price: 79.99,
                    totalPrice: 90.39,
                    tax: 0.13,
                    authNumber: "133145")
        ]
    }
}
