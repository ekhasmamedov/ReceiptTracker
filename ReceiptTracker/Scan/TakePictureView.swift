import Foundation
import SwiftUI

struct TakePictureView: View {
    @State private var showScanningView = false
    @StateObject private var textRecognition = TakePictureViewModel()
    
    var body: some View {
        mainView
        .sheet(isPresented: $showScanningView) {
            scanDocumentView
        }
    }

    var mainView: some View {
        ScrollView {
            VStack {
                Button("Take Picture") {
                    if !UIDevice.current.isSimulator { // no camera on the Simulator
                        showScanningView = true
                    }
                }.buttonStyle(PrimaryButtonStyle())

                ForEach(textRecognition.items, id: \.id) { item in
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
