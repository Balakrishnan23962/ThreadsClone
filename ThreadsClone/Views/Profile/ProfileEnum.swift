//
//  ProfileEnum.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 04/10/23.
//

import Foundation

enum ProfileEnum: Int, Identifiable, CaseIterable {
    case threads
    case replies
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        }
    }
    var id : Int { return self.rawValue }
}
