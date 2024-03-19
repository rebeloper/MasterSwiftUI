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
// Text

import SwiftUI

struct ContentView: View {
    
    @ScaledMetric private var fontSize: CGFloat = 30
    
    @State private var text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
//    @State private var text = "Lorem ipsum dolor sit amet, consectetur laborum"
    @State private var isBold = false
    
    @State private var marathon = Measurement(value: 45.8, unit: UnitLength.miles)
    
    
    @State private var names = [
        PersonNameComponents(givenName: "Alex", familyName: "Nagy"),
        PersonNameComponents(givenName: "Alex", familyName: "Nagy"),
        PersonNameComponents(givenName: "Alex", familyName: "Nagy"),
    ]
    
    @State private var name = "Ada Lovelace"
    
    var attributedString: AttributedString {
        var attributedName = AttributedString(name)
        
        let ada = attributedName.range(of: "Ada")!
        let lovelace = attributedName.range(of: "Lovelace")!
        
        attributedName[ada].foregroundColor = .red
        attributedName[lovelace].foregroundColor = .green
        
        return attributedName
    }
    
    var body: some View {
        VStack {
            Text(attributedString)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

