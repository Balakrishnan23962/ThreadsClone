//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(0 ... 100, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.counterclockwise")
                            .foregroundStyle(.black)
                    })
                }
            })
        }
    }
}

#Preview {
    FeedView()
}
