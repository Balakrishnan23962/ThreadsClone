//
//  ThreadsAndReplies.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 05/10/23.
//

import SwiftUI

struct ThreadsAndReplies: View {
    @State var selectedFilter: ProfileEnum = .threads
    @Namespace var animation
    private var filteredRectangle: CGFloat {
        let count = CGFloat(ProfileEnum.allCases.count)
//        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
//            return 0.0
//        }
//        let screen = windowScene.screen
//        return screen.bounds.width / count - 20
        return UIScreen.main.bounds.width / count - 20
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(ProfileEnum.allCases, id: \.id) { value in
                    VStack {
                        Text(value.title)
                            .font(.subheadline)
                        .fontWeight(selectedFilter == value ? .semibold : .regular)
                        if selectedFilter == value {
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: filteredRectangle, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        }
                        else {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: filteredRectangle, height: 1)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring) {
                            selectedFilter = value
                        }
                    }
                }
            }
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) {threads in
                    ThreadCell()
                    }
                }
            }
        }
    }
}

#Preview {
    ThreadsAndReplies()
}
