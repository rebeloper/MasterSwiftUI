////
////  AlertButton.swift
////  MasterSwiftUI
////
////  Created by Alex Nagy on 13.08.2024.
////
//
//import SwiftUI
//
//public struct AlertButton: Identifiable, Equatable {
//    public static func == (lhs: AlertButton, rhs: AlertButton) -> Bool {
//        true
//    }
//    
//    public let id = UUID()
//    
//    public let title: String
//    public let role: ButtonRole?
//    public let action: (() -> Void)?
//    
//    public init(title: String, role: ButtonRole? = nil, action: (() -> Void)? = nil) {
//        self.title = title
//        self.role = role
//        self.action = action
//    }
//    
//    public init(_ type: AlertButtonType) {
//        switch type {
//        case .cancel:
//            self.title = "Cancel"
//            self.role = .cancel
//            self.action = nil
//        case .ok:
//            self.title = "OK"
//            self.role = nil
//            self.action = nil
//        }
//    }
//}
