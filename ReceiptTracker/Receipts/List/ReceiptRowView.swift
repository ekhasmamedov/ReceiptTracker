import SwiftUI

struct ReceiptRowView: View {
    let text: String

    var body: some View {
        HStack {
            Text(text)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.vertical, 12)
    }
}
