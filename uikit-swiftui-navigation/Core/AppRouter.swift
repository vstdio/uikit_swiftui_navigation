//
//  AppRouter.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

final class AppRouter: ObservableObject {
    @Published private(set) var isAuthFlow: Bool = true
    @Published var authFlow: [AppRouterDestination] = []
    @Published var mainFlow: [AppRouterDestination] = []

    func setIsAuthFlow(_ value: Bool) {
        withAnimation {
            isAuthFlow = value
            clearFlows()
        }
    }

    func clearFlows() {
        DispatchQueue.main.async { [weak self] in
            self?.authFlow.removeAll(keepingCapacity: true)
            self?.mainFlow.removeAll(keepingCapacity: true)
        }
    }

    func push(destination: AppRouterDestination) {
        if isAuthFlow {
            authFlow.append(destination)
        } else {
            mainFlow.append(destination)
        }
    }

    func push(path: AppRouterPath) {
        push(destination: AppRouterDestination(path: path))
    }

    @ViewBuilder
    func screen(for destination: AppRouterDestination) -> some View {
        switch destination.path {
        case .register: RegisterScreen()
        case .profileDetails: ProfileDetailsScreen()
        }
    }
}
