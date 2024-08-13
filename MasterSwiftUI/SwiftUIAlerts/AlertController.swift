//
//  AlertController.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 13.08.2024.
//

import SwiftUI

@Observable
public class AlertController {
    
    var alertDetails: AlertDetails?
    
    public func present(_ type: AlertType = .alert, title: String = "", message: String = "", buttons: [AlertButton] = [AlertButton(.ok)]) {
        if type == .alert, title == "", message == "" {
            fatalError("Alerts should have at least a title or a message")
        }
        self.alertDetails = AlertDetails(type: type, title: title, message: message, buttons: buttons)
    }
    
    public func present(_ type: AlertType = .alert, title: String = "Error", error: Error, buttons: [AlertButton] = [AlertButton(.ok)]) {
        self.alertDetails = AlertDetails(type: type, title: title, message: error.localizedDescription, buttons: buttons)
    }
    
}
