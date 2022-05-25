import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(20)
            .foregroundColor(buttonColor(for: configuration))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(buttonColor(for: configuration), lineWidth: 1)
            )
    }

    func buttonColor(for configuration: Configuration) -> Color {
        configuration.isPressed ? Color.softWhiteColor.opacity(0.5) : Color.softWhiteColor
    }
}
