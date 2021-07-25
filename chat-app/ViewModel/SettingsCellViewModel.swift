//
//  SettingsCellViewModel.swift
//  chat-app
//
//  Created by Y u l i a on 25.07.2021.
//

import SwiftUI

enum SettingsViewModel: Int, CaseIterable {
    case account
    case notifications
    case savedMessages
    
    var title: String {
        switch self {
        case .account: return "Account"
        case .notifications: return "Notifications"
        case .savedMessages: return "Saved Messages"
        }
    }
    
    var imageName: String {
        switch self {
        case .account: return "key.fill"
        case .notifications: return "bell.badge.fill"
        case .savedMessages: return "star.fill"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .account: return .blue
        case .notifications: return .red
        case .savedMessages: return .yellow
        }
    }
    
}
