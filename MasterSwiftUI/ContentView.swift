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

import SwiftUI
import PhotosUI

struct ContentView: View {
    
    @State private var persons = [
        Person(name: "Ada"),
        Person(name: "Bob"),
        Person(name: "Claire")
    ]
    
    struct Person: Identifiable, Hashable {
        var id = UUID().uuidString
        
        var name: String
    }
    
    @State private var selection: [PhotosPickerItem] = []
    @State private var selectedImages: [UIImage] = []
    
    @State private var progress = 0.30
    @State private var total = 0.70
    
    @State private var editText = false
    @State private var text = "Bob"
    
    var body: some View {
        VStack {
            if editText {
                HStack {
                    TextField("Name", text: $text)
                        .textFieldStyle(.roundedBorder)
                    Button("Done") {
                        editText.toggle()
                    }
                }
            } else {
                HStack {
                    Text(text)
                    Spacer()
                    RenameButton()
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .padding()
        .renameAction {
            editText.toggle()
        }
    }

}

#Preview {
    NavigationStack {
        ContentView()
    }
}

extension PhotosPickerItem {
    
    @MainActor
    func convert() async -> UIImage? {
        do {
            if let data = try await self.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    return uiImage
                }
            }
        } catch {
            print(error.localizedDescription)
        }
        
        return nil
    }
}
