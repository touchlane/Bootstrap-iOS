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
    func build() -> UIViewController
}

protocol EmptyRouter: AnyObject {}

protocol EmptyListener: AnyObject {
    func onEmptyBack()
}

protocol EmptyView: AnyObject {
    func display(headerTitle: String)
    func display(footerImage: UIImage)
}

protocol EmptyPresenter {
    func viewDidLoad()
    func viewWillAppear()
}

protocol EmptyInteractor {}
