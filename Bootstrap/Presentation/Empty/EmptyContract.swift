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

protocol EmptyBuilder {
    func build() -> EmptyViewController
}

protocol EmptyRouter: AnyObject {}

protocol EmptyListener: AnyObject {
    func onEmptyBack()
}

protocol EmptyView: AnyObject {}

protocol EmptyPresenter {
    func viewDidLoad()
    func viewWillAppear()
}

protocol EmptyInteractor {}
