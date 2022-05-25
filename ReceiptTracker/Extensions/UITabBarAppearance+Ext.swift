import UIKit
import SwiftUI

extension UITabBarAppearance {
    static var `default`: UITabBarAppearance {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = Color.greyColor.uiColor
        appearance.selectionIndicatorTintColor = Color.softWhiteColor.uiColor
        return appearance
    }
}
