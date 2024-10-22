//
//  AppRouterUIKit.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import UIKit
import SwiftUI

final class AppRouterUIKit {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(false, animated: false)
        navigationController.navigationBar.prefersLargeTitles = true
        pushAuthScreen()
    }

    func pushMainScreen() {
        var screen = MainScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        controller.title = "Home"
        navigationController.setViewControllers([controller], animated: true)
    }

    func pushAuthScreen() {
        var screen = AuthScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        controller.title = "Auth"
        navigationController.pushViewController(controller, animated: true)
    }

    func pushRegisterScreen() {
        var screen = RegisterScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        controller.title = "Register"
        navigationController.pushViewController(controller, animated: true)
    }

    func pushProfileDetailsScreen() {
        var screen = ProfileDetailsScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        controller.title = "Profile"
        navigationController.pushViewController(controller, animated: true)
    }

    func setIsAuthFlow(_ value: Bool) {
        var controllers: [UIViewController] = []
        if value {
            var screen = AuthScreen()
            screen.routerUIKit = self
            let controller = UIHostingController(rootView: screen)
            controller.title = "Auth"
            controllers.append(controller)
        } else {
            var screen = MainScreen()
            screen.routerUIKit = self
            let controller = UIHostingController(rootView: screen)
            controller.title = "Home"
            controllers.append(controller)
        }
        navigationController.setViewControllers(controllers, animated: true)
    }
}
