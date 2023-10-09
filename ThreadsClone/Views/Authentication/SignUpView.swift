//
//  SignUpView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 30/09/23.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = RegistrationViewModel()
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
                TextField("Enter Your Email", text: $viewModel.email)
                    .textFieldModifier()
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                SecureField("Enter Your Password", text: $viewModel.password)
                    .textFieldModifier()
                    .keyboardType(.default)
                TextField("Enter Your full name", text: $viewModel.fullName)
                    .textFieldModifier()
                    .keyboardType(.namePhonePad)
                TextField("Enter Your Username", text: $viewModel.userName)
                    .textFieldModifier()
                    .keyboardType(.namePhonePad)
            }
            Button(action: {
                Task {
                    try await viewModel.createUser()
                }
            }, label: {
                Text("Sign Up")
            })
            .buttonModifier(width: 340, height: 44)
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
