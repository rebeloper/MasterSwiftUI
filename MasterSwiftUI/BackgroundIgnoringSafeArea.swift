//
//  BackgroundIgnoringSafeArea.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 20.02.2024.
//

import SwiftUI

extension View {
    func backgroundIgnoringSafeArea<B: View>(@ViewBuilder background: @escaping () -> B) -> some View {
        ZStack {
            background().ignoresSafeArea()
            self
        }
    }
}
