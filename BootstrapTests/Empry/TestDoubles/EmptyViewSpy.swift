//
//  EmptyViewSpy.swift
//  BootstrapTests
//
//  Created by Alex Yanski on 3/25/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

@testable import Bootstrap

final class EmptyViewSpy: EmptyView {
    var invokedDisplayHeaderTitleParameters: (headerTitle: String, Void)?
    func display(headerTitle: String) {
        invokedDisplayHeaderTitleParameters = (headerTitle, ())
    }

    var invokedDisplayFooterImageParameters: (footerImage: UIImage, Void)?
    func display(footerImage: UIImage) {
        invokedDisplayFooterImageParameters = (footerImage, ())
    }
}
