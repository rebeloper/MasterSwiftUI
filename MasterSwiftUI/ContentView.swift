//
//  ContentView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 06.02.2024.
//

// ZStack, Creating ViewModifiers, Spacer, ControlGroup, ViewThatFits, ContentUnavailableView
// GeometryReader (GeometryStack), ScrollViewReader
// Grid, LazyVGrid, LazyHGrid, Table

import SwiftUI

struct ContentView: View {
    
    @State private var colors = [
        ColorInfo(name: "Red", description: .red),
        ColorInfo(name: "Blue", description: .blue),
        ColorInfo(name: "Orange", description: .orange)
    ]
    
    var body: some View {
        Table(colors) {
            TableColumn("Names") { color in
                Text(color.name)
            }
            
            TableColumn("Colors") { color in
                color.description
            }
        }
    }
}

struct ColorInfo: Identifiable {
    let id = UUID()
    var name = ""
    var description = Color.clear
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}

