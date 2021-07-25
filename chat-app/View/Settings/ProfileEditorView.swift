//
//  ProfileEditorView.swift
//  chat-app
//
//  Created by Y u l i a on 25.07.2021.
//

import SwiftUI

struct ProfileEditorView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            VStack(alignment: .center,
                   content: {
                
                    
                HStack {
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64, alignment: .center)
                            .padding(30)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        
                        Button(
                            action: {
                                // MARK: - add from Gallery
                            }, label: {
                                Text("Edit Photo")
                            }
                        )
                    }
                    .padding()
                }
                
                VStack {
                    HStack {
                        Text("Status:")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding([.horizontal, .top])
                NavigationLink(
                    destination: ChangeStatusView(),
                    label: {
                        HStack {
                            Text("Available")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            }
                            .padding()
                        }
                    )
                    
                }
                .padding(.horizontal)
                .foregroundColor(.black)
                .background(Color.white)
            
                
                Spacer()
                // TODO: - modify prototype
            })
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}



struct ProfileEditorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditorView()
    }
}
