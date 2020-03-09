//
//  RootViewController.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

final class RootViewController: UINavigationController {
    var router: RootRouter!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isTranslucent = false

        router.showEmpty()
    }
}
