//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {


        let window: UIWindow = .init(frame: UIScreen.main.bounds)
        window.rootViewController = TasksListViewController()
        self.window = window
        self.window?.makeKeyAndVisible()

        return true
    }

}

