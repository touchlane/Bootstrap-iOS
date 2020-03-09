//
//  EmptyContract.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

protocol EmptyDependency {
    var parent: UINavigationController { get }
}

protocol EmptyCoordinator: AnyObject {
    func start()
}

protocol EmptyRouter: AnyObject {}

protocol EmptyView: AnyObject {}

protocol EmptyPresenter {
    func viewDidLoad()
    func viewWillAppear()
}

protocol EmptyInteractor {}

protocol EmptyBuilder {
    func build() -> UIViewController
}
