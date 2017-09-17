//
//  Address.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit
import CoreLocation
import ObjectMapper

class Address: Mappable {
    private(set) var street: String?
    private(set) var suite: String?
    private(set) var city: String?
    private(set) var zipcode: String?
    private(set) var geo: CLLocation?
    
    private(set) var albums: [Album]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        street  <- map["street"]
        suite   <- map["suite"]
        city    <- map["city"]
        zipcode <- map["zipcode"]
        
        let transform = TransformOf<CLLocation, [String: Any]>(fromJSON: { (value: [String: Any]?) -> CLLocation? in
            // transform value from [String: Any]? to CLLocation?
            var location: CLLocation?
            
            if let value = value, let lat = value["lat"] as? String, let lng = value["lng"] as? String, let latitude = CLLocationDegrees(lat), let longitude = CLLocationDegrees(lng) {
                location = CLLocation(latitude: latitude, longitude: longitude)
            }
            
            return location
        }, toJSON: { (value: CLLocation?) -> [String: Any]? in
            // transform value from CLLocation? to [String: Any]?
            if let value = value {
                return [
                    "lat": "\(value.coordinate.latitude)",
                    "lng": "\(value.coordinate.longitude)"
                ]
            }
            
            return nil
        })
        
        geo <- (map["geo"], transform)
    }
}
