//
//  NavigationScene.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

class NavigationScene {
    let parent: UIViewController

    init(parent: UIViewController) {
        self.parent = parent
    }

    func play(view: UIViewController) {
        let navigation: UINavigationController? = parent as? UINavigationController ?? parent.navigationController
        navigation?.pushViewController(view, animated: true)
    }

    func stop() {
        let navigation: UINavigationController? = parent as? UINavigationController ?? parent.navigationController
        navigation?.popViewController(animated: true)
    }
}
