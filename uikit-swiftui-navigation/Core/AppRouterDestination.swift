//
//  AppRouterDestination.swift
//  uikit-swiftui-navigation
//
//  Created by Timur Karimov on 22.10.2024.
//

import Foundation

enum AppRouterPath {
    case register
    case profileDetails
}

struct AppRouterDestination: Equatable, Hashable {
    var path: AppRouterPath
    var params: AnyHashable?
}
