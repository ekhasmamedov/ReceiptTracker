import Foundation
import Combine

class ReceiptListViewModel: ObservableObject {
    @Published var receipts: [Receipt] = []
    
    init() {
        fetchReceipts()
    }
    
    func fetchReceipts() {
        receipts = [
            Receipt(identifier: "1", name: "Receipt 1"),
            Receipt(identifier: "2", name: "Receipt 2"),
            Receipt(identifier: "3", name: "Receipt 3"),
        ]
    }
}
