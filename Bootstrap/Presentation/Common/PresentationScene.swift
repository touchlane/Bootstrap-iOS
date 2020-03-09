//
//  PresentationScene.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/4/20.
//  Copyright © 2020 Alex Yanski. All rights reserved.
//

import UIKit

class PresentationScene {
    let parent: UIViewController

    init(parent: UIViewController) {
        self.parent = parent
    }

    func play(view: UIViewController) {
        parent.present(view, animated: true, completion: nil)
    }

    func stop() {
        parent.dismiss(animated: true, completion: nil)
    }
}
