//
//  NavigationStackModifier.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct NavigationStackModifier: ViewModifier {
    @EnvironmentObject private var router: AppRouter
    @Binding var navigationPath: [String]

    func body(content: Content) -> some View {
        NavigationStack(path: $navigationPath) {
            content
                .navigationDestination(for: String.self) { path in
                    router.screen(for: path)
                }
        }
    }
}

extension View {
    func navigationStack(path: Binding<[String]>) -> some View {
        return modifier(NavigationStackModifier(navigationPath: path))
    }
}
