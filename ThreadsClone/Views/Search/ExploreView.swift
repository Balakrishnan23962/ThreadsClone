//
//  ExploreView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(1...10, id: \.self) { count in
                        ExploreCell()
                    }
                }
                .padding()
            }
            .scrollIndicators(.hidden)
            .searchable(text: .constant(""), prompt: "Search")
            .navigationTitle("Search")
        }
    }
}

#Preview {
    ExploreView()
}
