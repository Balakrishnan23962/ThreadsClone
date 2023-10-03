//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 14) {
                Image(.ban)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Ban the Undead")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        })
                    }
                    Text("Seven deadly sins")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    HStack(spacing: 15) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "heart")
                        })
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "bubble.right")
                        })
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.rectanglepath")
                        })
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "paperplane")
                        })
                    }
                    .tint(.black)
                    .padding(.vertical, 12)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
