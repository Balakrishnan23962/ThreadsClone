//
//  CreateUserModel.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 09/10/23.
//

import Foundation

struct CreateUserModel: Codable {
    var userName: String
    var password: String
    var fullName: String
    var email: String
    
    enum CodingKeys: CodingKey {
        case userName
        case password
        case fullName
        case email
    }
}
