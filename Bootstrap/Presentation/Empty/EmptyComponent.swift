//
//  EmptyComponent.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

final class EmptyComponent {
    private let dependency: EmptyDependency

    init(dependency: EmptyDependency) {
        self.dependency = dependency
    }
}
