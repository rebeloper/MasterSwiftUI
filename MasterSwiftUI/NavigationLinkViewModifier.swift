//
//  NavigationPushViewModifier.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 16.04.2024.
//

import SwiftUI

struct NavigationLinkViewModifier<Destination: View>: ViewModifier {
    
    @Binding var isPresented: Bool
    @ViewBuilder var destination: () -> Destination
    var onDismiss: (() -> Void)?
    
    func body(content: Content) -> some View {
        content
            .navigationDestination(isPresented: $isPresented, destination: destination)
            .onChange(of: isPresented) { _, newValue in
                if !newValue {
                   onDismiss?()
                }
            }
    }
}

extension View {
    
    func link<Destination: View>(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil, @ViewBuilder destination: @escaping () -> Destination) -> some View {
        self.modifier(NavigationLinkViewModifier(isPresented: isPresented, destination: destination, onDismiss: onDismiss))
    }
}


