//
//  uikit_swiftui_navigationApp.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 27.09.2024.
//

import SwiftUI

@main
struct AppRoot: App {
    @StateObject private var router = AppRouter()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            if SceneDelegate.useUIKitNavigation {
                EmptyView()
            } else {
                ContentView()
                    .environmentObject(router)
            }
        }
    }
}
