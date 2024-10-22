//
//  MainScreen.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject private var router: AppRouter
    weak var routerUIKit: AppRouterUIKit?

    @State private var username = "John"

    var body: some View {
        VStack(spacing: 10) {
            Text("Greetings, \(username)!")
            Button {
                if let routerUIKit {
                    routerUIKit.pushProfileDetailsScreen()
                } else {
                    router.push(path: .profileDetails)
                }
            } label: {
                Text("Details")
            }
            Button {
                if let routerUIKit {
                    routerUIKit.setIsAuthFlow(true)
                } else {
                    router.setIsAuthFlow(true)
                }
            } label: {
                Text("Logout")
            }
        }
        .navigationTitle("Home")
    }
}

#Preview {
    MainScreen()
        .environmentObject(AppRouter())
}
