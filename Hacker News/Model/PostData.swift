//
//  PostData.swift
//  Hacker News
//
//  Created by Ghayoor ul Haq on 06/05/2020.
//  Copyright © 2020 Ghayoor ul Haq. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}

