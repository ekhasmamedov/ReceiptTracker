//
//  MainView.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-04.
//

import SwiftUI

struct MainView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.greyColor)
        UITabBar.appearance().isTranslucent = true
    }
    
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
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
