//
//  ContentView.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 27.09.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var router: AppRouter

    var body: some View {
        if router.isAuthFlow {
            AuthScreen()
                .navigationStack(path: $router.authFlow)
                .transition(.push(from: .trailing))
        } else {
            MainScreen()
                .navigationStack(path: $router.mainFlow)
                .transition(.push(from: .leading))
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppRouter())
}
