//
//  RegisterScreen.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct RegisterScreen: View {
    @EnvironmentObject private var router: AppRouter
    weak var routerUIKit: AppRouterUIKit?

    @State private var login: String = ""
    @State private var password: String = ""
    @State private var confirm: String = ""

    var body: some View {
        VStack(spacing: 10) {
            TextField("Login", text: $login)
                .textFieldStyle(.roundedBorder)
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            TextField("Confirm Password", text: $confirm)
                .textFieldStyle(.roundedBorder)
            Button {
                if let routerUIKit {
                    routerUIKit.setIsAuthFlow(false)
                } else {
                    router.setIsAuthFlow(false)
                }
            } label: {
                Text("Register")
            }
        }
        .padding(.horizontal, 50)
        .navigationTitle("Register")
    }
}

#Preview {
    RegisterScreen()
        .environmentObject(AppRouter())
}
