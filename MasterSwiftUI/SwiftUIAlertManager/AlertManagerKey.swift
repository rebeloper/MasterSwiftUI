//
//  AlertManagerKey.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 02.09.2024.
//

import SwiftUI

public struct AlertManagerKey: EnvironmentKey {
    @MainActor
    public static var defaultValue = AlertManager()
}
