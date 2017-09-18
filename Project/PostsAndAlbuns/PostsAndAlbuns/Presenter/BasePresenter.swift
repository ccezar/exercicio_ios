//
//  BasePresenter.swift
//  PostsAndAlbuns
//
//  Created by Caio Cezar Lopes dos Santos on 17/09/17.
//  Copyright © 2017 MyApps. All rights reserved.
//

import UIKit

protocol Lifecycle {
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
}

class BasePresenter: NSObject, Lifecycle {

    func viewDidLoad() {}
    func viewWillAppear() {}
    func viewWillDisappear() {}
}
