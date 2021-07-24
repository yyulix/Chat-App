//
//  LoginView.swift
//  chat-app
//
//  Created by Y u l i a on 22.07.2021.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                HStack { Spacer() }
                
                Text("// Chat App Name")
                    .font(.largeTitle)
                    .bold()
                
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.purple)

                
                
                VStack(spacing: 20) {
                    TextField("Phone or email", text: $email)
                    Divider()
                        .foregroundColor(.gray)

                    SecureField("Password", text: $password)
                    Divider()
                        .foregroundColor(.gray)
                }
                .padding([.top, .horizontal])
                
                HStack {
                    Spacer()
                    
                    NavigationLink(
                        destination: Text("Reset password..."),
                        label: {
                            Text("Forgot password?")
                                .font(.system(size: 13, weight: .semibold))
                                .padding(.top)
                                .padding(.trailing, 28)
                                .foregroundColor(Color.black)
                            
                        })
                }
                
                Button(action: {
                    print("Handle sign in...")
                }, label: {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.purple)
                        .clipShape(Capsule())
                        .padding()
                })
                .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
                
                Spacer()
                
                NavigationLink(
                    destination: RegistrationView(),
                    label: {
                        HStack {
                            Spacer()
                            
                            Text("Don't have an account?")
                                .foregroundColor(.black)
                            Text("Set up")
                                .foregroundColor(.black)
                            
                            Spacer()
                        }.padding(40)
                    }
                )
            }
            .padding(.leading)
        }
        .padding(.top, -60)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
