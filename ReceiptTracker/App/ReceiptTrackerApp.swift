import SwiftUI

@main
struct ReceiptTrackerApp: App {
    init() {
        UINavigationBar.customizeAppearance()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
