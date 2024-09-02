//
//  AlerManager+EnvironmentValues.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 02.09.2024.
//

import SwiftUI

public extension EnvironmentValues {
    var alertManager: AlertManager {
        get {
            return self[AlertManagerKey.self]
        }
        set {
            self[AlertManagerKey.self] = newValue
        }
    }
}
