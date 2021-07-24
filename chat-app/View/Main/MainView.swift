//
//  MainView.swift
//  chat-app
//
//  Created by Y u l i a on 24.07.2021.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectionIndex = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectionIndex,
                    content:  {
                        ContactsView()
                            .tabItem {
                                Image(systemName: "person")
                            }
                            .onTapGesture {
                                selectionIndex = 0
                            }
                            .tag(0)
                        ChatsView()
                            .tabItem {
                                Image(systemName: "bubble.left")
                            }
                            .onTapGesture {
                                selectionIndex = 1
                            }
                            .tag(1)
                        ChannelsView()
                            .tabItem {
                                Image(systemName: "bubble.left.and.bubble.right")
                            }
                            .onTapGesture {
                                selectionIndex = 2
                            }
                            .tag(2)
                        SettingsView()
                            .tabItem {
                                Image(systemName: "gear")
                            }
                            .onTapGesture {
                                selectionIndex = 3
                            }
                            .tag(3)
                    })
            .navigationTitle(getTabTitle(index: selectionIndex))
        }
    }
    
    private func getTabTitle(index: Int) -> String {
        switch index {
        case 0: return "Contacts"
        case 1: return "Chats"
        case 2: return "Channels"
        case 3: return "Settings"
        default: return ""
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
