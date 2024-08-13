//
//  AlertDetails.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 13.08.2024.
//

import Foundation

public struct AlertDetails: Equatable {
    public let type: AlertType
    public let title: String
    public let message: String
    public let buttons: [AlertButton]
}
