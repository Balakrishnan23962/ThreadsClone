//
//  ThreadView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct ThreadView: View {
    @State var caption = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularImageView()
                    VStack(alignment: .leading, spacing: 6) {
                       Text("Ban the undead")
                            .fontWeight(.semibold)
                        TextField("Start a thread...", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)
                    if !caption.isEmpty {
                        Button(action: {
                            caption = ""
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(.gray)
                        })
                    }
                }
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        
                    }, label: {
                        Text("Cancel")
                    })
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Text("Post")
                    })
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
            }
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ThreadView()
}
