import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(20)
            .foregroundColor(configuration.isPressed ? Color.softWhiteColor.opacity(0.5) : .red)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(configuration.isPressed ? Color.softWhiteColor.opacity(0.5) : .red, lineWidth: 1)
            )
     }
}
