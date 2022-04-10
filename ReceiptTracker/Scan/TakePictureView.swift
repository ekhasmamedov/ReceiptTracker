import Foundation
import SwiftUI

struct TakePictureView: View {
    @State private var showingScanningView = false
    @State private var recognizedText: String = ""
    
    var body: some View {
        ZStack {
            Color.darkGreenColor.ignoresSafeArea()
            Button("Take Picture") {
                if !UIDevice.current.isSimulator {
                    showingScanningView = true
                }
            }
            .buttonStyle(PrimaryButtonStyle())
        }
        .sheet(isPresented: $showingScanningView) {
            ScanDocumentView(recognizedText: self.$recognizedText) {
                showingScanningView = false
            }
        }
    }
}
