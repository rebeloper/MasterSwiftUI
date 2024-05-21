//
//  DataHandlingView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 21.05.2024.
//

import SwiftUI

struct DataHandlingView: View {
    
//    @State private var name = ""
    
    @Environment(AppController.self) private var appController
    
    var body: some View {
        VStack {
            Text(appController.person.name)
            MyTextField()
        }
        .padding()
        .onChange(of: appController.person) { oldValue, newValue in
            
        }
    }
}

#Preview {
    DataHandlingView()
}
