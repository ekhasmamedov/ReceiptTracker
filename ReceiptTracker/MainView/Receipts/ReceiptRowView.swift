//
//  ReceiptRowView.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-09.
//

import SwiftUI

struct ReceiptRowView: View {
    let text: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Text(text)
                    .fixedSize(horizontal: false, vertical: true)
                NavigationLink.empty
            }
            .padding(.vertical, 12)
        }
    }
}
