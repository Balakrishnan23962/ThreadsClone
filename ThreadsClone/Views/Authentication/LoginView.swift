//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 30/09/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image(.threads)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .symbolVariant(.fill)
                    .foregroundStyle(.red)
                    .padding()
                VStack {
                    TextField("Enter Your Name", text: .constant(""))
                        .textFieldModifier()
                    SecureField("Enter Your Password", text: .constant(""))
                        .textFieldModifier()
                }
                NavigationLink {
                    
                } label: {
                    Text("Forgot Password?")
                        .foregroundStyle(.black)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 30)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .buttonModifier()
                })
                
                Spacer()
                Divider()
                HStack {
                    Text("Don't have an Account yet?")
                    NavigationLink {
                        SignUpView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }

                }
                .font(.footnote)
                .foregroundStyle(.black)
                .padding(.vertical, 15)
            }
        }
    }
}

#Preview {
    LoginView()
}

