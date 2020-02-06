//
//  WebView.swift
//  H4X0R News
//
//  Created by Baksa, Bridget Marie on 1/24/20.
//  Copyright © 2020 Bridget Baksa. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString { // if url is not nil
            if let url = URL(string: safeString) { // if string is actually a url
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

