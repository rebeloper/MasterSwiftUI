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
        ScrollViewReader { proxy in
            Button("Go to bottom") {
                withAnimation {
                    proxy.scrollTo(24)
                }
            }
            ScrollView {
                ForEach(0..<30, id: \.self) { index in
                    Image(systemName: "\(index).circle")
                        .font(.largeTitle)
                        .id(index)
                }
            }
            Button("Go to top") {
                withAnimation {
                    proxy.scrollTo(3)
                }
            }
        }
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}

