//
//  ImageView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 04.06.2024.
//

import SwiftUI

struct ImageView: View {
    
    @ScaledMetric var size: CGFloat = 64
    
    var body: some View {
        HStack {
            Image(systemName: "house")
                .font(.system(size: size))
                .foregroundStyle(.yellow)
                .symbolEffect(.pulse)
            Label("house", systemImage: "house")
        }
    }
}

#Preview {
    ImageView()
}
