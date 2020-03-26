//
//  EmptyPresenterSpec.swift
//  BootstrapTests
//
//  Created by Alex Yanski on 3/25/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import Nimble
import Quick

@testable import Bootstrap

final class EmptyPresenterSpec: QuickSpec {
    override func spec() {
        var view: EmptyViewSpy!
        var interactorSpy: EmptyInteractorSpy!
        var routerSpy: EmptyRouterSpy!

        var presenter: EmptyPresenter!

        beforeEach {
            view = EmptyViewSpy()
            interactorSpy = EmptyInteractorSpy()
            routerSpy = EmptyRouterSpy()

            presenter = EmptyPresenterImpl(
                view: view,
                router: routerSpy,
                interactor: interactorSpy
            )
        }

        describe("on viewDidLoad") {
            it("displays header title") {
                presenter.viewDidLoad()
                expect(view.invokedDisplayHeaderTitleParameters).notTo(beEmpty())
            }

            it("displays footer image") {
                presenter.viewDidLoad()
                expect(view.invokedDisplayFooterImageParameters).notTo(beNil())
            }
        }
    }
}
