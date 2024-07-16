//
//  CircularShapesView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 15.07.2024.
//

import SwiftUI

struct CircularShapesView: View {
    var body: some View {
        VStack {
//            Image("pexels-lee-campbell-18167-115655")
//                .resizable()
//                .scaledToFit()
//                .mask(Circle())
            Button("Tap me") {
                
            }
            .background(.red, in: .ellipse.stroke())
//            .background(Capsule().fill(.red))
        }
    }
}

#Preview {
    CircularShapesView()
}
