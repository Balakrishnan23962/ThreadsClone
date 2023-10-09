//
//  AuthService.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 09/10/23.
//

import Firebase
import Combine

protocol AuthServiceProtocol {
    func login(with email: String, password: String) async throws
    func createUser(with userData: CreateUserModel) async throws
}

class AuthService: AuthServiceProtocol {
    
    static let shared = AuthService()
    
    @MainActor
    func login(with email: String, password: String) async throws {
        
    }
    @MainActor
    func createUser(with userData: CreateUserModel) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: userData.email, password: userData.password)
            print(result)
        } catch {
            print(error.localizedDescription)
        }
    }
}
