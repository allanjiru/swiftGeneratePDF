//
//  ContentView.swift
//  pdf generator
//
//  Created by Allan Njiru on 09/08/2024.
//

import PDFKit
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            PDFKitView(pdfData: PDFDocument(data: generatePDF())!)
        }
    }
    
    @MainActor
    private func generatePDF() -> Data {
        let pdfRenderer = UIGraphicsPDFRenderer(bounds: CGRect(x: 0, y: 0, width: 595, height: 842))
         
        let data = pdfRenderer.pdfData { context in
            context.beginPage()
            
            let globalIcon = UIImage(named: "logo")
            let globeIconRect = CGRect(x: 450, y: 550, width: 100, height: 100)
            globalIcon!.draw(in: globeIconRect)
        }
        
        return data
    }
    
    func alignText(value:String, x: Int, y: Int, width:Int, height: Int, alignment: NSTextAlignment, textFont: UIFont){
    }
    
    @MainActor func savePDF() {
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
