//
//  WindowScene.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

final class WindowScene {
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func play(view: UIViewController) {
        window.rootViewController = view
        window.makeKeyAndVisible()
    }
}
