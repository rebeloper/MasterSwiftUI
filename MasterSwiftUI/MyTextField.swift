//
//  MyTextField.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 21.05.2024.
//

import SwiftUI

struct MyTextField: View {
    
    @Environment(AppController.self) private var appController
    
    var body: some View {
        TextField("Name", text: Bindable(appController).person.name)
            .textFieldStyle(.roundedBorder)
    }
}

