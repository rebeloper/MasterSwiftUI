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
// List
// ScrollView, Menu, PhotosPicker, ProgressView, RenameButton
// Color Picker, Date Picker, Disclosure Group, Form

import SwiftUI

struct ContentView: View {
    
    @State private var expanded = false
    
    var body: some View {
        Form {
            DisclosureGroup("Disclosure") {
                Text("hey")
            }
            Text("Hello")
                .listRowBackground(Color.red)
                .listRowInsets(.init(top: 30, leading: 30, bottom: 30, trailing: 30))
            Color.orange
            
            Section {
                Text("Sections")
                Button("Button") {
                    
                }
                Toggle("Toggle", isOn: .constant(true))
            } header: {
                Text("Header")
            }
            .headerProminence(.increased)
        }
    }

}

#Preview {
    NavigationStack {
        ContentView()
    }
}


struct ViewThatFits_WithScrollView: View {
    var repeatedDataView: some View {
        VStack {
            ForEach(0..<15) { index in
                Image (systemName: "\(index) circle")
                    .padding()
            }
        }
    }
    
    var body: some View {
//        ViewThatFits {
//            repeatedDataView
//            
//            ScrollView {
//                repeatedDataView
//            }
//        }
//        .font(.largeTitle)
        
        repeatedDataView
            .font(.largeTitle)
            .scrollableIfNeeded()
    }
}

extension View {
    func scrollableIfNeeded() -> some View {
        ViewThatFits {
            self
            
            ScrollView {
                self
            }
        }
    }
}
