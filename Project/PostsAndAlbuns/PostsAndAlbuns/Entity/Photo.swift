//
//  photos Photo.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit
import ObjectMapper

class Photo: Mappable {
    private(set) var albumId: Int?
    private(set) var id: Int?
    private(set) var title: String?
    private(set) var url: String?
    private(set) var thumbnailUrl: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        albumId      <- map["albumId"]
        id           <- map["id"]
        title        <- map["title"]
        url          <- map["url"]
        thumbnailUrl <- map["thumbnailUrl"]
    }
}
