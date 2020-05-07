//
//  NetwokManager.swift
//  Hacker News
//
//  Created by Ghayoor ul Haq on 06/05/2020.
//  Copyright © 2020 Ghayoor ul Haq. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                           let results =  try decoder.decode(Results.self, from: safeData)
                            
                            // if we are using observable we need to tap into main thread because it is going to listened by UI
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        } catch {
                                print(error)
                        }
                    }
                }
            }
            
            task.resume()
        }
    }
}
