//
//  RootComponent.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

final class RootComponent: EmptyDependency {
    private let dependency: RootDependency
    let parent: UINavigationController

    init(dependency: RootDependency, parent: UINavigationController) {
        self.dependency = dependency
        self.parent = parent
    }
}
