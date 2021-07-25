//
//  ChangeStatusView.swift
//  chat-app
//
//  Created by Y u l i a on 25.07.2021.
//

import SwiftUI

struct ChangeStatusView: View {
    var body: some View {
        ZStack {
            Color(
                .systemGroupedBackground
            )
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("CURRENTLY SET TO")
                        Spacer()
                    }
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    
                    HStack {
                        Text("Available")
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    
                    HStack {
                        Text("SET YOUR STATUS")
                        Spacer()
                    }
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    
                    ForEach((0 ... 15), id: \.self) { _ in
                        HStack {
                            Text("Available")
                            Spacer()
                        }
                        .padding()
                        .background(Color.white)
                    }
                }
            }.padding(.vertical)
        }
    }
}

struct ChangeStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeStatusView()
    }
}
