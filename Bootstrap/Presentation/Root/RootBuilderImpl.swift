//
//  RootBuilderImpl.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

class RootBuilderImpl: RootBuilder {
    private let dependency: RootDependency

    init(dependency: RootDependency) {
        self.dependency = dependency
    }

    func build() -> UIViewController {
        let view = RootViewController()
        let component = RootComponent(dependency: dependency, parent: view)
        let emptyBuilder = EmpryBuilderImpl(dependency: component)
        let scene = NavigationScene(parent: view)
        let router = RootRouterImpl(scene: scene, contactsListBuilder: emptyBuilder)
        view.router = router
        return view
    }
}
