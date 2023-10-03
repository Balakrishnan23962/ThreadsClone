//
//  ProfileView.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Ban the Undead")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("Seven Deadly sins")
                                .font(.caption)
                                .fontWeight(.medium)
                        }
                        .padding(.vertical, 6)
                        Text("He is immortal because of the youth spring")
                            .font(.footnote)
                        Text("2 followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    CircularImageView()
                }
                Button(action: {
                    
                }, label: {
                    Text("Follow")
                        .buttonModifier(width: 352, height: 32)
                })
            }
        }
        .padding()
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ProfileView()
}
