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
    var invokedDisplayHeaderTitle = false
    var invokedDisplayHeaderTitleCount = 0
    var invokedDisplayHeaderTitleParameters: (headerTitle: String, Void)?
    var invokedDisplayHeaderTitleParametersList = [(headerTitle: String, Void)]()
    func display(headerTitle: String) {
        invokedDisplayHeaderTitle = true
        invokedDisplayHeaderTitleCount += 1
        invokedDisplayHeaderTitleParameters = (headerTitle, ())
        invokedDisplayHeaderTitleParametersList.append((headerTitle, ()))
    }

    var invokedDisplayFooterImage = false
    var invokedDisplayFooterImageCount = 0
    var invokedDisplayFooterImageParameters: (footerImage: UIImage, Void)?
    var invokedDisplayFooterImageParametersList = [(footerImage: UIImage, Void)]()
    func display(footerImage: UIImage) {
        invokedDisplayFooterImage = true
        invokedDisplayFooterImageCount += 1
        invokedDisplayFooterImageParameters = (footerImage, ())
        invokedDisplayFooterImageParametersList.append((footerImage, ()))
    }
}
