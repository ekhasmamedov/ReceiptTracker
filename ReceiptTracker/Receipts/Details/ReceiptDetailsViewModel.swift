import Foundation
import Combine

class ReceiptDetailsViewModel: ObservableObject {
    @Published var title: String = ""

    let receipt: Receipt

    init(receipt: Receipt) {
        self.receipt = receipt
        title = receipt.name
    }
}
