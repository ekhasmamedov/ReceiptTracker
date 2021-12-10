//
//  ScanDocumentView.swift
//  ReceiptTracker
//
//  Created by Eldar Khasmamedov on 2021-12-06.
//

import Foundation
import SwiftUI
import VisionKit

struct ScanDocumentView: UIViewControllerRepresentable {
    @Binding var recognizedText: String
    var callback: () -> Void
    
    func makeCoordinator() -> Coordinator {
        Coordinator(recognizedText: $recognizedText, parent: self)
    }
    
    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let documentViewController = VNDocumentCameraViewController()
        documentViewController.delegate = context.coordinator
        return documentViewController
    }
    
    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {
        
    }
    
    class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
        var recognizedText: Binding<String>
        var parent: ScanDocumentView
        
        init(recognizedText: Binding<String>, parent: ScanDocumentView) {
            self.recognizedText = recognizedText
            self.parent = parent
        }
        
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
            parent.callback()
        }
        
        fileprivate func extractImages(from scan: VNDocumentCameraScan) -> [CGImage] {
            var extractedImages = [CGImage]()
            for index in 0..<scan.pageCount {
                let extractedImage = scan.imageOfPage(at: index)
                guard let cgImage = extractedImage.cgImage else { continue }
                
                extractedImages.append(cgImage)
            }
            return extractedImages
        }
    }
}
