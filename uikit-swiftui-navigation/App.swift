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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
