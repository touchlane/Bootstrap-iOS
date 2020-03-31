//
//  AppDelegate.swift
//  Bootstrap
//
//  Created by Alex Yanski on 3/3/20.
//  Copyright © 2020 Touchlane LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let component = AppComponent(window: window!)
        let windowScene = WindowScene(window: window!)
        let rootView = RootBuilderImpl(dependency: component).build()
        windowScene.play(view: rootView)
        return true
    }
}
