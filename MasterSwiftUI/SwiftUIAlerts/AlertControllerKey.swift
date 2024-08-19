//
//  AlertControllerKey.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 19.08.2024.
//

import SwiftUI

public struct AlertControllerKey: EnvironmentKey {
    @MainActor
    public static var defaultValue = AlertController()
}
