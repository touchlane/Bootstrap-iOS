//
//  AppComponent.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

final class AppComponent: RootDependency {
    unowned let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }
}
