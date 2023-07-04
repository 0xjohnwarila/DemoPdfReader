//
//  ContentView.swift
//  DemoPdfViewer
//
//  Created by John Warila on 7/4/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    let pdfUrl = Bundle.main.url(forResource: "MotionPlanning", withExtension: "pdf")!
    var body: some View {
        NavigationSplitView {
            List {
                Text("Item")
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {
                PDFKitView(url: pdfUrl)
                                .scaledToFill()
            }
            .navigationTitle("Motion Planning")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
