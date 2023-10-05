//
//  AppEnvironment.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 05/10/23.
//

import Foundation

enum Tabs {
    case home
    case explore
    case upload
    case activity
    case profile
}

class AppEnvironment: ObservableObject {
    @Published var selectedTab: Tabs = .home 
}
