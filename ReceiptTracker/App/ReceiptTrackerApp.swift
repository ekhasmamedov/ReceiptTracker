import SwiftUI

@main
struct ReceiptTrackerApp: App {
    init() {
        customizeAppearance()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

extension ReceiptTrackerApp {
    func customizeAppearance() {
        UINavigationBar.appearance().tintColor = Color.softWhiteColor.uiColor

        let newNavBarAppearance = customNavBarAppearance()
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.standardAppearance = newNavBarAppearance
        navBarAppearance.scrollEdgeAppearance = newNavBarAppearance
        navBarAppearance.compactAppearance = newNavBarAppearance

        let newTabBarAppearance = customTabBarAppearance()
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.standardAppearance = newTabBarAppearance
        tabBarAppearance.scrollEdgeAppearance = newTabBarAppearance
    }
    
    func customNavBarAppearance() -> UINavigationBarAppearance {
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

    func customTabBarAppearance() -> UITabBarAppearance {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = Color.greyColor.uiColor
        appearance.selectionIndicatorTintColor = Color.softWhiteColor.uiColor
        return appearance
    }
}
