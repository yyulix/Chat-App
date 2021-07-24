//
//  RegistrationView.swift
//  chat-app
//
//  Created by Y u l i a on 22.07.2021.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var passwordRepeated = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                HStack { Spacer() }
                
                Text("Get started")
                    .font(.largeTitle)
                    .bold()
                
                Text("Create an account")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)

                
                
                VStack(spacing: 20) {
                    TextField("Username", text: $username)
                    Divider()
                        .foregroundColor(.gray)
                    TextField("Phone or email", text: $email)
                    Divider()
                        .foregroundColor(.gray)

                    SecureField("Password", text: $password)
                    Divider()
                        .foregroundColor(.gray)
                    
                    SecureField("Retype password", text: $passwordRepeated)
                    Divider()
                        .foregroundColor(.gray)
                }
                .padding([.top, .horizontal])
                
                Button(action: {
                    print("Handle sign in...")
                }, label: {
                    Text("Create account")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.purple)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                Button(action: {
                    mode.wrappedValue.dismiss() },
                label: {
                    HStack {
                        Spacer()

                        Text("Already have an account?")
                            .foregroundColor(.primary)
                        Text("Sign in")
                            .foregroundColor(.primary)
                        Spacer()
                    }.padding(40)
                })
                
            }
            .padding(.leading)
        }
        .padding(.top, -60)
    }

}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
