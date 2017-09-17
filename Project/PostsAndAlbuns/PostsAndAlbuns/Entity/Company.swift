//
//  Company.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit
import ObjectMapper

class Company: Mappable {
    private(set) var name: String?
    private(set) var catchPhrase: String?
    private(set) var bs: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name        <- map["name"]
        catchPhrase <- map["catchPhrase"]
        bs          <- map["bs"]
    }
}
