//
//  RootRouterImpl.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

final class RootRouterImpl: RootRouter {
    private let scene: NavigationScene
    private let contactsListBuilder: EmptyBuilder

    init(scene: NavigationScene, contactsListBuilder: EmptyBuilder) {
        self.scene = scene
        self.contactsListBuilder = contactsListBuilder
    }

    func showEmpty() {
        let view = contactsListBuilder.build()
        scene.play(view: view)
    }
}
