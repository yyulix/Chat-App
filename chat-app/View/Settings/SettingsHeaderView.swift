//
//  SettingsHeaderView.swift
//  chat-app
//
//  Created by Y u l i a on 25.07.2021.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        HStack() {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFill()
                .padding()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.white)
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

struct SettingsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsHeaderView()
    }
}
