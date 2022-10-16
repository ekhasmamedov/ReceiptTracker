import Foundation
import SwiftUI
import Combine

struct ReceiptListView: View {
    @StateObject var viewModel = ReceiptListViewModel()
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color.darkGreenColor)
    }
    
    var body: some View {
        NavigationView {
            listView
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
        }
    }

    var listView: some View {
        List {
            ForEach(viewModel.receipts) { receipt in
                NavigationLink(destination: ReceiptDetailsView(viewModel: ReceiptDetailsViewModel(receipt: receipt))) {
                    ReceiptRowView(text: receipt.merchantName)
                }
            }
        }
    }
}

struct ReceiptListView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptListView()
    }
}
