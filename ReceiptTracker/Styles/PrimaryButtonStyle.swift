//
//  PrimaryButtonStyle.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-09.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(5)
            .foregroundColor(configuration.isPressed ? Color.red.opacity(0.5) : .red)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(configuration.isPressed ? Color.red.opacity(0.5) : .red, lineWidth: 1.5)
            )
     }
}
