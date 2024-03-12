//
//  ContentView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 06.02.2024.
//

// ZStack, Creating ViewModifiers, Spacer, ControlGroup, ViewThatFits, ContentUnavailableView
// GeometryReader (GeometryStack), ScrollViewReader
// Grid, LazyVGrid, LazyHGrid, Table

// Button, Label, Link, ShareLink, SignInWithAppleButton, Toggle

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Image(systemName: "\(isOn ? "heart.fill" : "heart")")
            })
            .labelsHidden()
            .padding()
//            .background(.orange)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .toggleStyle(.button)
            .tint(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

