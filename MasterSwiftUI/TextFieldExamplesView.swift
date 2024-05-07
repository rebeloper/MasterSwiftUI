//
//  TextFieldExamplesView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 07.05.2024.
//

import SwiftUI

struct TextFieldExamplesView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var password = ""
    @State private var editor = ""
    
    enum NameFields {
        case first
        case last
    }
    
    @FocusState private var nameFields: NameFields?
    
    var body: some View {
        VStack {
            TextField("First name", text: $firstName)
                .focused($nameFields, equals: .first)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    nameFields = .last
                }
                .submitLabel(.next)
            
            TextField("Last name", text: $lastName, axis: .vertical)
                .focused($nameFields, equals: .last)
                .textFieldStyle(.roundedBorder)
                .lineLimit(2)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            TextEditor(text: $editor)
                .border(Color.black, width: 1)
                .lineLimit(2)
                .lineSpacing(10.0)
                .multilineTextAlignment(.trailing)
            Button("Tap me") {
                nameFields = .first
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TextFieldExamplesView()
}
