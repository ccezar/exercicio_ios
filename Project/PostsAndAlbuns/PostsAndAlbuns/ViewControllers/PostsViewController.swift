//
//  PostsViewController.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController {
    var presenter: PostsPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}
