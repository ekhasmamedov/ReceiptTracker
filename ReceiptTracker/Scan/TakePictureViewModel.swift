import SwiftUI
import Vision
import Combine

class TakePictureViewModel: ObservableObject {
    @Published var items: [TextModel] = []

    func recognizeText(scannedImages: [UIImage], didFinishRecognition: @escaping () -> Void) {
        let queue = DispatchQueue(label: "textRecognitionQueue", qos: .userInitiated)
        queue.async {
            for image in scannedImages {
                guard let cgImage = image.cgImage else { return }

                let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
                do {
                    let textItem = TextModel()
                    try requestHandler.perform([self.getTextRecognitionRequest(with: textItem)])
                    DispatchQueue.main.async {
                        self.items.append(textItem)
                    }
                } catch {
                    print(error.localizedDescription)
                }

                DispatchQueue.main.async {
                    didFinishRecognition()
                }
            }
        }
    }

    private func getTextRecognitionRequest(with textItem: TextModel) -> VNRecognizeTextRequest {
        let request = VNRecognizeTextRequest { request, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }

            guard let observations = request.results as? [VNRecognizedTextObservation] else { return }

            var fullText: String = ""
            observations.forEach { observation in
                guard let recognizedText = observation.topCandidates(1).first else { return }
                fullText += recognizedText.string
                fullText += "\n"
            }
            textItem.text = fullText
        }

        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true
        return request
    }
}
