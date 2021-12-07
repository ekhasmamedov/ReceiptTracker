//
//  TakePictureView.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-04.
//

import Foundation
import SwiftUI

struct TakePictureView: View {
    @State private var showingScanningView = true
    @State private var recognizedText: String = ""
    
    var body: some View {
        ZStack {
            Color.darkGreenColor.ignoresSafeArea()
        }
        .sheet(isPresented: $showingScanningView) {
            ScanDocumentView(recognizedText: self.$recognizedText)
        }
    }
}
