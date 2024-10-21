//
//  NavigationStackModifier.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct NavigationStackModifier: ViewModifier {
    @EnvironmentObject private var router: AppRouter
    @Binding var navigationPath: [AppRouterDestination]

    func body(content: Content) -> some View {
        NavigationStack(path: $navigationPath) {
            content
                .navigationDestination(for: AppRouterDestination.self) { destination in
                    router.screen(for: destination)
                }
        }
    }
}

extension View {
    func navigationStack(path: Binding<[AppRouterDestination]>) -> some View {
        return modifier(NavigationStackModifier(navigationPath: path))
    }
}
