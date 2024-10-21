//
//  uikit_swiftui_navigationApp.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 27.09.2024.
//

import SwiftUI

class ViewControllerHolder {
    weak var viewController: UIViewController?
    init() {

    }
}

protocol ViewScreen: View {
    // display
}

@main
struct AppRoot: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
