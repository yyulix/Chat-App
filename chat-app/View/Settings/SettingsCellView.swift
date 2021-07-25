//
//  SettingsViewCell.swift
//  chat-app
//
//  Created by Y u l i a on 25.07.2021.
//

import SwiftUI

struct SettingsCellView: View {
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

struct SettingsCellView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCellView()
    }
}
