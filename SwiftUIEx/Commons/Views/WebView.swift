//
//  WebView.swift
//  SwiftUIEx
//
//  Created by Dexter Kim on 2020-06-24.
//  Copyright © 2020 DexCodeFactory. All rights reserved.
//

import SwiftUI
import WebKit

struct SegmentControlWebView: View {
    
    var names = [""]
    var webUrlPath = [""]
    @State var selectedSegment = 0
    
    var body: some View {
        return VStack {
            HStack {
                Picker(selection: $selectedSegment, label: Text("")) {
                    ForEach(0 ..< names.count) { index in
                        Text(self.names[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            WebView(urlPath: webUrlPath[self.selectedSegment])
        }
    }
}

struct WebView: UIViewRepresentable {
    
    let urlPath: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: "https://developer.apple.com/tutorials/swiftui/\(urlPath)") else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
