//
//  ReceiptListView.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-06.
//

import Foundation
import SwiftUI

struct ReceiptListView: View {
    var body: some View {
        ZStack {
            Color.darkGreyColor.ignoresSafeArea()
            Text(longText)
                .foregroundColor(Color.softWhiteColor)
        }
    }
}

