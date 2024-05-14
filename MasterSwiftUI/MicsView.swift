//
//  MicsView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 14.05.2024.
//

import SwiftUI

struct MicsView: View {
    
    @State private var value = 0.6
    
    var body: some View {
        Form {
            DisclosureGroup("Settings") {
                Section {
                    Text("hello")
                    Stepper("Stepper", value: $value)
                    Button("Button") {
                        
                    }
                } header: {
                    HStack {
                        Image(systemName: "person")
                        Text("header")
                    }
                    .foregroundStyle(.orange)
                }
                .headerProminence(.increased)
                .listRowBackground(Color.red)
                .listRowInsets(.init(top: 0, leading: 100, bottom: 0, trailing: 0))
            }
            
        }
    }
}

#Preview {
    MicsView()
}
