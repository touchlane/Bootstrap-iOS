//
//  EmptyPresenterImpl.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/5/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

final class EmptyPresenterImpl: EmptyPresenter {
    private weak var view: EmptyView?
    private let router: EmptyRouter
    private let interactor: EmptyInteractor

    init(
        view: EmptyView,
        router: EmptyRouter,
        interactor: EmptyInteractor
    ) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }

    func viewDidLoad() {
        view?.display(headerTitle: L10n.NavigationBar.title)
        view?.display(footerImage: Asset.mainLogo.image)
    }

    func viewWillAppear() {}
}
