//
//  Alert+View.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 19.08.2024.
//

import SwiftUI

public extension View {
    func usesAlertController() -> some View {
        modifier(UsesAlertControllerModifier())
    }
    
    func sheetWithAlert<Content: View>(isPresented: Binding<Bool>,
                                       onDismiss: (() -> Void)? = nil,
                                       @ViewBuilder content: @escaping () -> Content) -> some View {
        self.sheet(isPresented: isPresented, onDismiss: onDismiss) {
            content().usesAlertController()
        }
    }
    
    func sheetWithAlert<Item: Identifiable, Content: View>(item: Binding<Item?>,
                                                           onDismiss: (() -> Void)? = nil,
                                                           @ViewBuilder content: @escaping (Item) -> Content) -> some View {
        self.sheet(item: item, onDismiss: onDismiss) { item in
            content(item).usesAlertController()
        }
    }
    
    #if !os(macOS)
    func fullScreenCoverWithAlert<Content: View>(isPresented: Binding<Bool>,
                                                 onDismiss: (() -> Void)? = nil,
                                                 @ViewBuilder content: @escaping () -> Content) -> some View {
        self.fullScreenCover(isPresented: isPresented, onDismiss: onDismiss) {
            content().usesAlertController()
        }
    }
    
    func fullScreenCoverWithAlert<Item: Identifiable, Content: View>(item: Binding<Item?>,
                                                                     onDismiss: (() -> Void)? = nil,
                                                                     @ViewBuilder content: @escaping (Item) -> Content) -> some View {
        self.fullScreenCover(item: item, onDismiss: onDismiss) { item in
            content(item).usesAlertController()
        }
    }
    #endif
}
