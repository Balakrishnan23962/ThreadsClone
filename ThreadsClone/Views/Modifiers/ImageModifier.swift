//
//  ImageModifier.swift
//  ThreadsClone
//
//  Created by Logicfocus Techonology Solution on 03/10/23.
//

import Foundation
import SwiftUI


struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}
