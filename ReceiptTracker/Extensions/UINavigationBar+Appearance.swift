import UIKit
import SwiftUI

extension UINavigationBar {
    static func customizeAppearance() {
        UINavigationBar.appearance().tintColor = Color.softWhiteColor.uiColor

        let newNavBarAppearance = UINavigationBarAppearance.default
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.standardAppearance = newNavBarAppearance
        navBarAppearance.scrollEdgeAppearance = newNavBarAppearance
        navBarAppearance.compactAppearance = newNavBarAppearance

        let newTabBarAppearance = UITabBarAppearance.default
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.standardAppearance = newTabBarAppearance
        tabBarAppearance.scrollEdgeAppearance = newTabBarAppearance
    }
}
