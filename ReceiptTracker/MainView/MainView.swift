import SwiftUI

struct MainView: View {    
    var body: some View {
        TabView {
            ReceiptListView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.portrait")
                    Text("Receipts")
                }
            TakePictureView()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Scan")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .accentColor(Color.softWhiteColor)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
