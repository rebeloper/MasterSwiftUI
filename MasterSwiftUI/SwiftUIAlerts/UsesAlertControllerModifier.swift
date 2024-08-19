//
//  UsesAlertControllerModifier.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 19.08.2024.
//

import SwiftUI

public struct UsesAlertControllerModifier: ViewModifier {
    
    @State private var alertController = AlertController()
    
    public func body(content: Content) -> some View {
        content
            .modifier(AlertControllerModifier())
            .environment(\.alertController, alertController)
    }
}
