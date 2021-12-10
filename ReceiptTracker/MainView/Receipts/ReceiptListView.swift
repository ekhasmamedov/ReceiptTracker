//
//  ReceiptListView.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-06.
//

import Foundation
import SwiftUI
import Combine

struct ReceiptListView: View {
    @StateObject var viewModel = ReceiptListViewModel()
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color.darkGreenColor)
    }
    
    var body: some View {
        receiptList
    }
    
    var receiptList: some View {
        List {
            Section(header: Text("Section 1")) {
                ForEach(viewModel.receipts) { receipt in
                    ReceiptRowView(text: receipt.title) {
                        viewModel.receiptSelected(receipt)
                    }
                }
            }
        }
    }
}

