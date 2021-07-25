//
//  SettingsView.swift
//  chat-app
//
//  Created by Y u l i a on 24.07.2021.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 1) {
                NavigationLink(
                    destination: ProfileEditorView(),
                    label: {
                        SettingsHeaderView().padding(.vertical)
                    }
                )
                
                ForEach((0 ... 2), id: \.self) { _ in
                    SettingsCellView()
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Log out")
                        .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
                        .foregroundColor(.red)
                        .background(Color.white)
                }).padding(.vertical)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
