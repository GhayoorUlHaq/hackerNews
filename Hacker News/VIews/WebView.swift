//
//  WebView.swift
//  Hacker News
//
//  Created by Ghayoor ul Haq on 07/05/2020.
//  Copyright © 2020 Ghayoor ul Haq. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI
struct WebView: UIViewRepresentable{
    
    let urlString: String?
    
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context){
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
