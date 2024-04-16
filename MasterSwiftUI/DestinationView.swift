//
//  DestinationView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 16.04.2024.
//

import SwiftUI

struct DestinationView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text("Hello, DestinationView!")
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    DestinationView()
}
