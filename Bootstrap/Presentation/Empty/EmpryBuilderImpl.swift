//
//  EmpryBuilderImpl.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

class EmpryBuilderImpl: EmptyBuilder {
    private let dependency: EmptyDependency

    init(dependency: EmptyDependency) {
        self.dependency = dependency
    }

    func build() -> UIViewController {
        let view = EmptyViewController()

        let navigationScene = NavigationScene(parent: dependency.parent)
        let presentationScene = PresentationScene(parent: dependency.parent)

        let router = EmptyRouterImpl(
            navigationScene: navigationScene,
            presentationScene: presentationScene
        )

        let interactor = EmptyInteractorImpl()
        let presenter = EmptyPresenterImpl(
            view: view,
            router: router,
            interactor: interactor
        )
        view.presenter = presenter
        return view
    }
}
