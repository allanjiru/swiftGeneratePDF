//
//  PDFKitView.swift
//  pdf generator
//
//  Created by Allan Njiru on 09/08/2024.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
    let pdfDoc: PDFDocument
        
    init(pdfData pdfDoc: PDFDocument) {
        self.pdfDoc = pdfDoc
    }
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDoc
        pdfView.autoScales = true
        
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDoc
    }
}

