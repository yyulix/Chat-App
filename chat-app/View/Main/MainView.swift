//
//  MainView.swift
//  chat-app
//
//  Created by Y u l i a on 24.07.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            TabView {
                ContactsView()
                    .tabItem {
                        Image(systemName: "person")
                    }
                ChatsView()
                    .tabItem {
                        Image(systemName: "bubble.left")
                    }
                ChannelsView()
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
