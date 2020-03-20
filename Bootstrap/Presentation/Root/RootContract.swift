//
//  RootContract.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

protocol RootDependency {
    var window: UIWindow { get }
}

protocol RootBuilder: AnyObject {
    func build() -> RootViewController
}

protocol RootRouter: AnyObject {
    func showEmpty()
}
