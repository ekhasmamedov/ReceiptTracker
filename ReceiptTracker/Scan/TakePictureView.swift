import Foundation
import SwiftUI

struct TakePictureView: View {
    @State private var showScanningView = false
    @StateObject private var textRecognition = TakePictureViewModel()
    
    var body: some View {
        NavigationView {
            mainView
                .navigationBarTitle("", displayMode: .inline)
                .toolbar { toolbarContent }
        }
        .sheet(isPresented: $showScanningView) {
            scanDocumentView
        }
    }

    @ToolbarContentBuilder
    var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            Button("Scan") {
                if !UIDevice.current.isSimulator { // no camera on the Simulator
                    showScanningView = true
                }
            }
        }

        ToolbarItem(placement: .navigationBarTrailing) {
            Button("Save") {
                print("Save tapped!")
            }
        }
    }

    var mainView: some View {
        ScrollView {
            VStack {
                ForEach(textRecognition.items) { item in
                    Text(item.text)
                        .foregroundColor(Color.softWhiteColor)
                }
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .background(Color.darkGreenColor)
    }

    var scanDocumentView: some View {
        ScanDocumentView(didFinishScanning: { result in
            print("didFinishScanning")
            switch result {
            case .success(let images):
                textRecognition.recognizeText(scannedImages: images) {
                    showScanningView = false
                }

            case .failure(let error):
                print(error.localizedDescription)
            }

        }, didCancelScanning: {
            print("didCancelScanning")
            showScanningView = false
        })
    }
}
