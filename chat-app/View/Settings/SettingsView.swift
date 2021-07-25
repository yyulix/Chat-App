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
                        SettingsHeader().padding(.vertical)
                    }
                )
                
                ForEach((0 ... 2), id: \.self) { _ in
                    SettingCell()
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

struct SettingsHeader: View {
    var body: some View {
        HStack() {
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .padding()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.black)
                .background(Color.blue)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4, content: {
                Text("Yulia Popova")
                Text("Online")
                    .foregroundColor(.gray)
            }).padding()
            Spacer()
        }.padding()
        .frame(width: UIScreen.main.bounds.width, height: 80, alignment: .center)
        .foregroundColor(.black)
        .background(Color.white)
    }
}

struct SettingCell: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20, alignment: .center)
                .padding(10)
                .background(Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(10)
            
            Text("Saved Messages")
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        
        .padding([.horizontal, .leading])
        
        .frame(width: UIScreen.main.bounds.width, height: 60, alignment: .center)
        .background(Color.white)
        
        Divider()
            .frame(height: 1)
            .background(Color(.systemGroupedBackground))
    }
}
