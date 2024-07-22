//
//  RectangularShapesView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 22.07.2024.
//

import SwiftUI

struct RectangularShapesView: View {
    var body: some View {
        VStack {
//            TextField("Name", text: .constant(""))
//                .padding()
//                .background(RoundedRectangle(cornerRadius: 25.0).foregroundStyle(.red))
//            RoundedRectangle(cornerSize: .init(width: 40, height: 90))
            
//                .size(width: 100.0, height: 200.0)
//                .strokeBorder(Color.black, lineWidth: 20)
//                .stroke(Color.black, style: .init(lineWidth: 10, lineCap: .round, dash: [15, 25]))
//                .padding()
//                .frame(width: 100, height: 100)
            
            UnevenRoundedRectangle(topLeadingRadius: .infinity, bottomLeadingRadius: 0, bottomTrailingRadius: 100, topTrailingRadius: 15, style: .circular)
                .padding()
        }
    }
}

#Preview {
    RectangularShapesView()
}
