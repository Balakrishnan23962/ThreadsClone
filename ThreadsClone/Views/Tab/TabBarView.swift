//
//  TabBarView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTabIndex = 0
    @State var lastSelectedTab = 0
    @State var showCreateThread = false
    var body: some View {
        TabView(selection: $selectedTabIndex) {
        FeedView()
                .tabItem {
                    Label("Home", systemImage: selectedTabIndex == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTabIndex == 0 ? .fill : .none)
                }
                .onAppear { 
                    selectedTabIndex = 0
                    lastSelectedTab = 0
                }
                .tag(0)
            ExploreView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .onAppear {
                    selectedTabIndex = 1
                    lastSelectedTab = 1
                }
                .tag(1)
            Text("")
                .tabItem {
                    Label("Upload", systemImage: "plus")
                }
                .onAppear { 
                    selectedTabIndex = 2
                }
                .tag(2)
            ActivityView()
                .tabItem {
                    Label("Like", systemImage: selectedTabIndex == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTabIndex == 3 ? .fill : .none)
                }
                .onAppear {
                    selectedTabIndex = 3
                    lastSelectedTab = 3
                }
                .tag(3)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: selectedTabIndex == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTabIndex == 4 ? .fill : .none)
                }
                .onAppear {
                    selectedTabIndex = 4
                    lastSelectedTab = 4
                }
                .tag(4)
        }
        .onChange(of: selectedTabIndex, {
            showCreateThread = selectedTabIndex == 2
        })
        .sheet(isPresented: $showCreateThread, onDismiss: {
            selectedTabIndex = lastSelectedTab
        }, content: {
            ThreadView()
        })
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}
