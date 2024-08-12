//
//  CustomPDFView.swift
//  pdf generator
//
//  Created by Allan Njiru on 12/08/2024.
//

import SwiftUI
import PDFKit

struct CustomPDFView: View {
    
    var body: some View {
        VStack {
            PDFKitView(pdfData: PDFDocument(data: generatePDF())!)
                .frame(width: 300, height: 400) // Adjust the frame size as needed
            Button("Save PDF") {
                savePDF()
            }
            .padding()
        }
    }
    
    @MainActor
    private func generatePDF() -> Data {
        let a4PageSize = CGSize(width: 595.2, height: 841.8) // A4 size in points (72 DPI)
        let pdfRenderer = UIGraphicsPDFRenderer(bounds: CGRect(origin: .zero, size: a4PageSize))
        
        let data = pdfRenderer.pdfData { context in
            context.beginPage()
            
            // Convert SwiftUI view to UIImage
            let uiImage = renderSwiftUIView()
            uiImage.draw(in: CGRect(origin: .zero, size: a4PageSize))
        }
        
        return data
    }
    
    private func renderSwiftUIView() -> UIImage {
        let hostingController = UIHostingController(rootView: PDFContentView())
        let targetSize = CGSize(width: 595.2, height: 841.8) // A4 size
        
        hostingController.view.bounds = CGRect(origin: .zero, size: targetSize)
        hostingController.view.backgroundColor = .clear
        
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            hostingController.view.drawHierarchy(in: hostingController.view.bounds, afterScreenUpdates: true)
        }
    }
    
    @MainActor
    func savePDF() {
        let data = generatePDF()
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let pdfPath = documentsDirectory?.appendingPathComponent("GeneratedDocument.pdf")
        
        do {
            try data.write(to: pdfPath!)
            print("PDF saved to: \(pdfPath!)")
        } catch {
            print("Could not save PDF: \(error)")
        }
    }
}

struct CustomPDFView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPDFView()
    }
}

