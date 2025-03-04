//
//  WebView.swift
//  WebView
//
//  Created by Marc on 2/10/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let htmlString: String
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlString, baseURL: nil)
    }
    
}
