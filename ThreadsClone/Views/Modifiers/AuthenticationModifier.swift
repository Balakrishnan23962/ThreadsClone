//
//  AuthenticationModifier.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 30/09/23.
//

import Foundation
import SwiftUI


extension View {
    func textFieldModifier() -> some View {
        modifier(TextFieldModifier())
    }
    func buttonModifier(width: CGFloat, height: CGFloat) -> some View {
        modifier(ButtonModifier(width: width, height: height))
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(14)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 25)
    }
}

struct ButtonModifier: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: width, height: height)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
