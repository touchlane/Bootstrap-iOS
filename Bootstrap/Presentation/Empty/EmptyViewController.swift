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
    var contentView: UIView = UIView()

    private let logoImageView = UIImageView()

    var presenter: EmptyPresenter!

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        navigationItem.title = "Bootstrap"

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
        logoImageView.image = UIImage(named: "main_logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        presenter.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.viewWillAppear()
    }
}

extension EmptyViewController: EmptyView {}
