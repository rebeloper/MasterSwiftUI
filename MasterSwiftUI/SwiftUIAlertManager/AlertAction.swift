//
//  AlertAction.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 26.08.2024.
//

import SwiftUI

public struct AlertAction: Identifiable {
    public let id = UUID()
    var role: ButtonRole? = nil
    var label: String
    var action: (() -> Void)? = nil
    
    init(role: ButtonRole? = nil, 
         label: String,
         action: (() -> Void)? = nil) {
        self.role = role
        self.label = label
        self.action = action
    }
    
    init(role: ButtonRole? = nil,
         label: AlertActionLabel,
         action: (() -> Void)? = nil) {
        self.role = role
        self.label = label.rawValue
        self.action = action
    }
}
