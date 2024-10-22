//
//  ProfileDetailsScreen.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import SwiftUI

struct ProfileDetailsScreen: View {
    @EnvironmentObject private var router: AppRouter
    weak var routerUIKit: AppRouterUIKit?

    var body: some View {
        VStack {
            Text("Profile Details")
        }
    }
}

#Preview {
    ProfileDetailsScreen()
        .environmentObject(AppRouter())
}
