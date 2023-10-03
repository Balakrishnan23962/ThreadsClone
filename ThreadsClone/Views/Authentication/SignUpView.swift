//
//  SignUpView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 30/09/23.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
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
                TextField("Enter Your Email", text: .constant(""))
                    .textFieldModifier()
                SecureField("Enter Your Password", text: .constant(""))
                    .textFieldModifier()
                TextField("Enter Your full name", text: .constant(""))
                    .textFieldModifier()
                TextField("Enter Your Username", text: .constant(""))
                    .textFieldModifier()
            }
            Button(action: {
                
            }, label: {
                Text("Sign Up")
            })
            .buttonModifier()
            .padding(.vertical)
            Spacer()
        }
            Divider()
            HStack {
                Text("Already have an account?")
                Button {
                    dismiss()
                } label: {
                    Text("Sign in")
                        .fontWeight(.semibold)
                }

            }
            .font(.footnote)
            .foregroundStyle(.black)
            .padding(.vertical, 15)
    }
}

#Preview {
    SignUpView()
}
