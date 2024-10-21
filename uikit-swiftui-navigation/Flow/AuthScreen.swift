//
//  AuthScreen.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct AuthScreen: View {
    @EnvironmentObject private var router: AppRouter
    @State private var login: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack(spacing: 10) {
            TextField("Login", text: $login)
                .textFieldStyle(.roundedBorder)
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            Button {
                router.setIsAuthFlow(false)
            } label: {
                Text("Authenticate")
            }
            Button {
                router.push(path: .register)
            } label: {
                Text("Register")
            }
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    AuthScreen()
        .environmentObject(AppRouter())
}
