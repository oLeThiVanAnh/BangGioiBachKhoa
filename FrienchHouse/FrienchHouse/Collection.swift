//
//  Collection.swift
//  FrienchHouse
//
//  Created by Le Thi Van Anh on 7/14/17.
//  Copyright © 2017 Le Thi Van Anh. All rights reserved.
//

import Foundation

class Collection {
    var name:String?
    var id: Int?
    var imageUrl: String?
    var releaseDate: String?

    init?(_ dict: [String: Any]?) {
        guard let dict = dict else {return nil}

        self.name = dict["name"] as? String
        self.id = dict["title"] as? Int
        self.imageUrl = dict["image_url"] as? String
        self.releaseDate = dict["release_date"] as? String
    }

    init(_ image: String) {
        self.imageUrl = image
    }

}
