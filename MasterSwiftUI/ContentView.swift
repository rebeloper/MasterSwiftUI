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
    var body: some View {
        TabView {
            ContentUnavailableView("Page one", systemImage: "square.and.arrow.down", description: Text("Lorem ipsum"))
            
            ContentUnavailableView("Page two", systemImage: "square.and.arrow.down", description: Text("Lorem ipsum"))
            
            ContentUnavailableView("Page three", systemImage: "square.and.arrow.down", description: Text("Lorem ipsum"))
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .backgroundIgnoringSafeArea {
            Color.teal
        }
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}

