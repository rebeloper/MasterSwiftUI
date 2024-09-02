//
//  AlertManager+View.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 02.09.2024.
//

import SwiftUI

extension View {
    
    func usesAlertManager() -> some View {
        self.modifier(AlertManagerModifier())
    }
    
    func sheetWithAlertManager<Content: View>(isPresented: Binding<Bool>,
                                              onDismiss: (() -> Void)? = nil,
                                              @ViewBuilder content: @escaping () -> Content) -> some View {
        self.sheet(isPresented: isPresented, onDismiss: onDismiss, content: {
            content().usesAlertManager()
        })
    }
    
    func sheetWithAlertManager<Item: Identifiable, Content: View>(item: Binding<Item?>,
                                                                  onDismiss: (() -> Void)? = nil,
                                                                  @ViewBuilder content: @escaping (Item) -> Content) -> some View {
        self.sheet(item: item, onDismiss: onDismiss) { item in
            content(item).usesAlertManager()
        }
    }
    
    func fullScreenCoverWithAlertManager<Content: View>(isPresented: Binding<Bool>,
                                                        onDismiss: (() -> Void)? = nil,
                                                        @ViewBuilder content: @escaping () -> Content) -> some View {
        self.fullScreenCover(isPresented: isPresented, onDismiss: onDismiss, content: {
            content().usesAlertManager()
        })
    }
    
    func fullScreenCoverWithAlertManager<Item: Identifiable, Content: View>(item: Binding<Item?>,
                                                                            onDismiss: (() -> Void)? = nil,
                                                                            @ViewBuilder content: @escaping (Item) -> Content) -> some View {
        self.fullScreenCover(item: item, onDismiss: onDismiss) { item in
            content(item).usesAlertManager()
        }
    }
}
