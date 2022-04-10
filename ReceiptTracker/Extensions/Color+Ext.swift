import Foundation
import SwiftUI

extension Color {
    static let whiteColor = Color("White")
    static let softWhiteColor = Color("SoftWhite")
    static let brownColor = Color("Brown")
    static let lightBrownColor = Color("LightBrown")
    static let greenColor = Color("Green")
    static let lightGreenColor = Color("LightGreen")
    static let darkGreenColor = Color("DarkGreen")
    static let greyColor = Color("Grey")
    static let darkGreyColor = Color("DarkGrey")
}

extension Color {
    var uiColor: UIColor {
        UIColor(self)
    }
}
