import Foundation
import SwiftUI
import VisionKit

struct ScanDocumentView: UIViewControllerRepresentable {
    var didFinishScanning: ((Result<[UIImage], Error>) -> Void)
    var didCancelScanning: () -> Void

    // MARK: - UIViewControllerRepresentable methods

    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let documentViewController = VNDocumentCameraViewController()
        documentViewController.delegate = context.coordinator
        return documentViewController
    }
    
    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController,
                                context: Context) {}
    
    class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
        let scannerView: ScanDocumentView
        
        init(scannerView: ScanDocumentView) {
            self.scannerView = scannerView
        }

        // MARK: - VNDocumentCameraViewControllerDelegate methods

        func documentCameraViewController(_ controller: VNDocumentCameraViewController,
                                          didFinishWith scan: VNDocumentCameraScan) {
            var scannedImages: [UIImage] = []
            for i in 0..<scan.pageCount {
                scannedImages.append(scan.imageOfPage(at: i))
            }
            scannerView.didFinishScanning(.success(scannedImages))
        }

        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
            scannerView.didCancelScanning()
        }

        func documentCameraViewController(_ controller: VNDocumentCameraViewController,
                                          didFailWithError error: Error) {
            scannerView.didFinishScanning(.failure(error))
        }
    }
}
