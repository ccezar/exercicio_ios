//
//  User.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit
import ObjectMapper

class User: Mappable {
    private(set) var id: Int?
    private(set) var name: String?
    private(set) var username: String?
    private(set) var email: String?
    private(set) var address: Address?
    private(set) var phone: String?
    private(set) var website: String?
    private(set) var company: Company?
    
    private(set) var albums: [Album]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id       <- map["id"]
        name     <- map["name"]
        username <- map["username"]
        email    <- map["email"]
        address  <- map["address"]
        phone    <- map["phone"]
        website  <- map["website"]
        company  <- map["company"]
    }
}
