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
// Navigation Basics
// Charts
// TabView
// TextField, SecureField, TextEditor
// Stepper, Slider, Gauge, Form
// NavigationStack, .toolbar
// Color, Image

import SwiftUI

struct ContentView: View {
    
    @State private var isDestinationViewSheetPresented = false
    @State private var isDestinationViewFullScreenCoverPresented = false
    @State private var isDestinationViewLinkPresented = false
    
    var body: some View {
        List {
            
            Button("DestinationView Sheet") {
                isDestinationViewSheetPresented.toggle()
            }
            
            Button("DestinationView Full Screen Cover") {
                isDestinationViewSheetPresented.toggle()
            }
            
            Button("DestinationView Link") {
                isDestinationViewLinkPresented.toggle()
            }
            
        }
        .sheet(isPresented: $isDestinationViewSheetPresented, onDismiss: {
            print("on dismissed")
        }, content: {
            DestinationView()
        })
        .fullScreenCover(isPresented: $isDestinationViewFullScreenCoverPresented, onDismiss: {
            print("on dismissed")
        }, content: {
            DestinationView()
        })
//        .navigationDestination(isPresented: $isDestinationViewLinkPresented) {
//            DestinationView()
//        }
        .link(isPresented: $isDestinationViewLinkPresented) {
            print("on dismissed")
        } destination: {
            DestinationView()
        }

    }

}

#Preview {
    NavigationStack {
        ContentView()
    }
}

