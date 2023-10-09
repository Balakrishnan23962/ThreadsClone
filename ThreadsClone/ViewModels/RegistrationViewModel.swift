//
//  RegistrationViewModel.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 09/10/23.
//

import Foundation



class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    @Published var userName = ""
    let authService: AuthService
    
    init(authService: AuthService = AuthService.shared) {
        self.authService = authService
    }
    @MainActor
    func createUser() async throws {
        let createUser = CreateUserModel(userName: userName, password: password, fullName: fullName, email: email)
        do {
            try await authService.createUser(with: createUser)
        }
        catch {
            print(error.localizedDescription)
        }
    }
}
