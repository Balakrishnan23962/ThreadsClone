//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(alignment: .center, spacing: 14) {
            CircularImageView()
            VStack(alignment: .leading, spacing: 3) {
                Text("Ban the Undead")
                    .fontWeight(.semibold)
                Text("Seven Deadly sins")
            }
            .font(.footnote)
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Follow")
                    .tint(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 100, height: 32)
                    .background {
                        RoundedRectangle(cornerRadius: 11)
                            .stroke(Color(.systemGray4), lineWidth: 2)
                    }
            })
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
