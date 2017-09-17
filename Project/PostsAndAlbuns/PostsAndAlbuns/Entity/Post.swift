//
//  Post.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit
import ObjectMapper

class Post: Mappable {
    private(set) var userId: Int?
    private(set) var id: Int?
    private(set) var title: String?
    private(set) var body: String?
    private(set) var comments: [Comment]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        userId <- map["userId"]
        id     <- map["id"]
        title  <- map["title"]
        body   <- map["body"]
    }
    
    func setComments(comments: [Comment]) {
        self.comments = comments
    }
}
