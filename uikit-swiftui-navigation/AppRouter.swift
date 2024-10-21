//
//  AppRouter.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

final class AppRouter: ObservableObject {
    @Published private(set) var isAuthFlow: Bool = true
    @Published var authFlow: [String] = []
    @Published var mainFlow: [String] = []

    func setIsAuthFlow(_ value: Bool) {
        withAnimation {
            isAuthFlow = value
            clearFlows()
        }
    }

    func clearFlows() {
        DispatchQueue.main.async { [weak self] in
            self?.authFlow = []
            self?.mainFlow = []
        }
    }

    func push(screen: String) {
        if isAuthFlow {
            authFlow.append(screen)
        } else {
            mainFlow.append(screen)
        }
    }

    @ViewBuilder
    func screen(for path: String) -> some View {
        switch path {
        case "Register": RegisterScreen()
        case "ProfileDetails": ProfileDetailsScreen()
        default: EmptyView()
        }
    }
}
