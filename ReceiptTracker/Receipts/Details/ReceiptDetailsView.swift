import Foundation
import SwiftUI

struct ReceiptDetailsView: View {
    @ObservedObject var viewModel: ReceiptDetailsViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Receipt Name:")
                Text(viewModel.title)
            }
            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .navigationTitle("Receipt Details")
        .background(Color.darkGreenColor)
    }
}

struct ReceiptDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let receipt = Receipt(identifier: "1", name: "Receipt Name")
        ReceiptDetailsView(viewModel: ReceiptDetailsViewModel(receipt: receipt))
    }
}
