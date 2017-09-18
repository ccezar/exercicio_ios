//
//  PostsPresenter.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit

class PostsPresenter: BasePresenter {
    var interactor = PostsInteractor()
    var posts = [Post]()
    
    weak var router: PostsRouter?
    weak var viewProtocol: PostsViewController?
    
    override func viewDidLoad() {
        guard let view = viewProtocol as? PostsViewController else { return }
        
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()

    }
    
}
