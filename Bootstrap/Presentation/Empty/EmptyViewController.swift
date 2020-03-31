//
//  EmptyViewController.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/3/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import SnapKit
import UIKit

class EmptyViewController: UIViewController {
    private let contentView = UIView()

    private let logoImageView = UIImageView()

    var presenter: EmptyPresenter!

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white

        view.addSubview(contentView)
        contentView.backgroundColor = .white
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
        }

        contentView.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-20)
            make.height.equalTo(60)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.viewWillAppear()
    }
}

extension EmptyViewController: EmptyView {
    func display(headerTitle: String) {
        navigationItem.title = headerTitle
    }

    func display(footerImage: UIImage) {
        logoImageView.image = footerImage
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
    }
}
