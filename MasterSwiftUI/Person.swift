//
//  Person.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 21.05.2024.
//

import SwiftUI

struct Person: Identifiable, Codable, Equatable {
    var id = UUID().uuidString
    
    var name: String
    
    init(name: String = "") {
        self.name = name
    }
}
