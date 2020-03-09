//
//  NavigationScene.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

class NavigationScene {
    let parent: UINavigationController

    init(parent: UINavigationController) {
        self.parent = parent
    }

    func play(view: UIViewController) {
        parent.pushViewController(view, animated: true)
    }

    func stop() {
        parent.popViewController(animated: true)
    }
}
