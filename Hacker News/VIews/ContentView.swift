//
//  ContentView.swift
//  Hacker News
//
//  Created by Ghayoor ul Haq on 06/05/2020.
//  Copyright © 2020 Ghayoor ul Haq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url), label: {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                })
                
            }
            .navigationBarTitle("Háçkër Nęwś")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
