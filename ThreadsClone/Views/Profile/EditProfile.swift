//
//  EditProfile.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 05/10/23.
//

import SwiftUI

struct EditProfile: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.secondarySystemBackground)
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Ban the undead")
                                .fontWeight(.semibold)
                            Text("seven deadly sins")
                        }
                        Spacer()
                        CircularImageView()
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)
                        TextField("Enter your bio...", text: .constant(""), axis: .vertical)
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)
                        TextField("Add link...", text: .constant(""), axis: .vertical)
                    }
                    Divider()
                    Toggle("Private", isOn: .constant(false))
                        .fontWeight(.semibold)
                    Divider()
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                })
                .padding()
            }
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
                        Text("Done")
                    })
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EditProfile()
}
