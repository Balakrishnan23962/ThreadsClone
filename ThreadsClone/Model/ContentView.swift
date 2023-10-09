//
//  ContentView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 05/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var isLoggedIn = false
    var body: some View {
        VStack {
            if isLoggedIn {
                TabBarView()
            }
            else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
