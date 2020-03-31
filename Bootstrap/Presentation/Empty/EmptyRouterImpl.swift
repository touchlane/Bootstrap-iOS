//
//  EmptyRouterImpl.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/5/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

final class EmptyRouterImpl: EmptyRouter {
    private let navigationScene: NavigationScene
    private let presentationScene: PresentationScene

    init(
        navigationScene: NavigationScene,
        presentationScene: PresentationScene
    ) {
        self.navigationScene = navigationScene
        self.presentationScene = presentationScene
    }
}
