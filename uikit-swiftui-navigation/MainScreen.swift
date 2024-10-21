//
//  MainScreen.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject private var router: AppRouter
    @State private var username = "John"

    var body: some View {
        VStack(spacing: 10) {
            Text("Greetings, \(username)!")
            Button {
                router.push(screen: "ProfileDetails")
            } label: {
                Text("Details")
            }
            Button {
                router.setIsAuthFlow(true)
            } label: {
                Text("Logout")
            }
        }
    }
}

#Preview {
    MainScreen()
        .environmentObject(AppRouter())
}
