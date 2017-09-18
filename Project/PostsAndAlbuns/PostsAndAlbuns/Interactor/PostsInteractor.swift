//
//  PostsInteractor.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit

protocol InputData {
    func loadRecentItems(quantity: Int)
    func loadItems(quantity: Int, page: Int)
    func loadItem(id: Int)
}

protocol PostsInteractorOutputData: class {
    func presentList(posts: [Post])
    func presentItem(post: Post)
}

class PostsInteractor: NSObject, InputData {
    weak var output: PostsInteractorOutputData?
    
    func loadRecentItems(quantity: Int) {
        
    }
    
    func loadItems(quantity: Int, page: Int) {

    }
    
    func loadItem(id: Int) {
    
    }
}
