//
//  PostData.swift
//  H4X0R News
//
//  Created by Baksa, Bridget Marie on 1/24/20.
//  Copyright © 2020 Bridget Baksa. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    // Must have id for it to be identifiable and used in other places
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
