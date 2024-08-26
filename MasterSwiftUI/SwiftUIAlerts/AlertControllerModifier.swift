////
////  AlertControllerModifier.swift
////  MasterSwiftUI
////
////  Created by Alex Nagy on 19.08.2024.
////
//
//import SwiftUI
//
//public struct AlertControllerModifier: ViewModifier {
//    
//    @Environment(\.alertController) private var alertController
//    @State private var isAlertPresented = false
//    @State private var isConfirmationDialogPresented = false
//    
//    public func body(content: Content) -> some View {
//        content
//            .alert(alertController.alertDetails?.title ?? "", isPresented: $isAlertPresented, actions: buttons, message: message)
//            .confirmationDialog(alertController.alertDetails?.title ?? "", isPresented: $isConfirmationDialogPresented, titleVisibility: alertController.alertDetails?.title != "" ? .visible : .hidden, actions: buttons, message: message)
//            .onChange(of: alertController.alertDetails) { _, newValue in
//                guard let newValue else { return }
//                switch newValue.type {
//                case .alert:
//                    isAlertPresented.toggle()
//                case .confirmationDialog:
//                    isConfirmationDialogPresented.toggle()
//                }
//            }
//            .onChange(of: isAlertPresented) { _, newValue in
//                if !newValue {
//                    alertController.alertDetails = nil
//                }
//            }
//            .onChange(of: isConfirmationDialogPresented) { _, newValue in
//                if !newValue {
//                    alertController.alertDetails = nil
//                }
//            }
//    }
//    
//    func buttons() -> some View {
//        ForEach(alertController.alertDetails?.buttons ?? []) { button in
//            Button(button.title, role: button.role) {
//                button.action?()
//            }
//        }
//    }
//    
//    @ViewBuilder
//    func message() -> some View {
//        if alertController.alertDetails?.message != "" {
//            Text(alertController.alertDetails?.message ?? "")
//        } else {
//            EmptyView()
//        }
//    }
//}
