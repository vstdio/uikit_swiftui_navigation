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
                /// Тут можно вернуть любую View, это не имеет значения, так как все равно
                /// SceneDelegate создаст новый экземпляр UIWindow и отобразит нужную View самостоятельно
                EmptyView()
            } else {
                ContentView()
                    .environmentObject(router)
            }
        }
    }
}
