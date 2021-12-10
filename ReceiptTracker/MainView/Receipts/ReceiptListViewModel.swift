//
//  ReceiptListViewModel.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-09.
//

import Foundation
import Combine

class ReceiptListViewModel: ObservableObject {
    @Published var receipts: [Receipt] = []
    
    init() {
        fetchReceipts()
    }
    
    func fetchReceipts() {
        receipts = [
            Receipt(identifier: "1", title: "Receipt 1"),
            Receipt(identifier: "2", title: "Receipt 2"),
            Receipt(identifier: "3", title: "Receipt 3"),
        ]
    }
    
    func receiptSelected(_ receipt: Receipt) {
        
    }
}
