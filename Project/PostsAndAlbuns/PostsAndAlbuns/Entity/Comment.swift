//
//  Comment.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit
import ObjectMapper

class Comment: Mappable {
    private(set) var postId: Int?
    private(set) var id: Int?
    private(set) var name: String?
    private(set) var email: String?
    private(set) var body: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        postId <- map["postId"]
        id     <- map["id"]
        name   <- map["name"]
        email  <- map["email"]
        body   <- map["body"]
    }
}
