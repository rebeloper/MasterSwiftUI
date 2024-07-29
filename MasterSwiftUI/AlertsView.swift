//
//  AlertsView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 29.07.2024.
//

import SwiftUI

struct AlertsView: View {
    
    @State private var delete = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button("Show Confirmation Dialog", role: .destructive) {
                delete.toggle()
            }
            .confirmationDialog("Are you sure you want to delete?", isPresented: $delete, titleVisibility: .visible) {
                Button("Delete", role: .destructive) {
                    
                }
            }
        }
    }
}

#Preview {
    AlertsView()
}
