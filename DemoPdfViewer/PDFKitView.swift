//
//  PDFKitView.swift
//  DemoPdfViewer
//
//  Created by John Warila on 7/4/23.
//

import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: UIViewRepresentableContext<PDFKitView>) -> PDFView {
        let pdfView = PDFView()
                pdfView.document = PDFDocument(url: self.url)
                return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: UIViewRepresentableContext<PDFKitView>) {
        // TODO
    }
}

