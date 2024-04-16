//
//  NavigationSheet.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 16.04.2024.
//

import SwiftUI

struct NavigationSheet<Destination: View, Label: View>: View {
    
    @State private var isPresented = false
    
    @ViewBuilder private var destination: () -> Destination
    @ViewBuilder private var label: () -> Label
    private var onDismiss: (() -> Void)?
    
    init(@ViewBuilder destination: @escaping () -> Destination,
         @ViewBuilder label: @escaping () -> Label,
         onDismiss: (() -> Void)? = nil) {
        self.destination = destination
        self.label = label
        self.onDismiss = onDismiss
    }
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            label()
        }
        .sheet(isPresented: $isPresented, onDismiss: {
            onDismiss?()
        }, content: {
            destination()
        })
    }
}

