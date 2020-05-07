//
//  DetailView.swift
//  Hacker News
//
//  Created by Ghayoor ul Haq on 07/05/2020.
//  Copyright © 2020 Ghayoor ul Haq. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

