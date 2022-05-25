import UIKit
import SwiftUI

extension UINavigationBarAppearance {
    static var `default`: UINavigationBarAppearance {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = Color.greyColor.uiColor

        // Apply white colored normal and large titles.
        let textColor = Color.softWhiteColor.uiColor
        appearance.titleTextAttributes = [.foregroundColor: textColor]
        appearance.largeTitleTextAttributes = [.foregroundColor: textColor]

        // Apply white color to all the nav bar buttons.
        let barButtonItemAppearance = UIBarButtonItemAppearance(style: .plain)
        barButtonItemAppearance.normal.titleTextAttributes = [.foregroundColor: textColor]
        barButtonItemAppearance.disabled.titleTextAttributes = [.foregroundColor: UIColor.lightText]
        barButtonItemAppearance.highlighted.titleTextAttributes = [.foregroundColor: UIColor.label]
        barButtonItemAppearance.focused.titleTextAttributes = [.foregroundColor: textColor]
        appearance.buttonAppearance = barButtonItemAppearance
        appearance.backButtonAppearance = barButtonItemAppearance
        appearance.doneButtonAppearance = barButtonItemAppearance

        return appearance
    }
}
