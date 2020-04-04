//
//  EmptyViewSpy.swift
//  BootstrapTests
//
//  Created by Alex Yanski on 3/25/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

@testable import Bootstrap

final class EmptyViewSpy: EmptyView {
    var invokedDisplayHeaderTitleParameters: String?
    func display(headerTitle: String) {
        invokedDisplayHeaderTitleParameters = headerTitle
    }

    var invokedDisplayFooterImageParameters: UIImage?
    func display(footerImage: UIImage) {
        invokedDisplayFooterImageParameters = footerImage
    }
}
