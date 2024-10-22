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
        pushAuthScreen()
    }

    func pushMainScreen() {
        var screen = MainScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        navigationController.setViewControllers([controller], animated: true)
        navigationController.title = "Home"
    }

    func pushAuthScreen() {
        var screen = AuthScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        navigationController.pushViewController(controller, animated: true)
        navigationController.title = "Auth"
    }

    func pushRegisterScreen() {
        var screen = RegisterScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        navigationController.pushViewController(controller, animated: true)
        navigationController.title = "Register"
    }

    func pushProfileDetailsScreen() {
        var screen = ProfileDetailsScreen()
        screen.routerUIKit = self
        let controller = UIHostingController(rootView: screen)
        navigationController.pushViewController(controller, animated: true)
        navigationController.title = "Profile"
    }

    func setIsAuthFlow(_ value: Bool) {
        var controllers: [UIViewController] = []
        if value {
            var screen = AuthScreen()
            screen.routerUIKit = self
            controllers.append(UIHostingController(rootView: screen))
        } else {
            var screen = MainScreen()
            screen.routerUIKit = self
            controllers.append(UIHostingController(rootView: screen))
        }
        navigationController.setViewControllers(controllers, animated: true)
    }
}
