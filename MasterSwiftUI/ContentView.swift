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

import SwiftUI

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
    
    @State private var selection: [Person] = []
    
    var body: some View {
        Roll($persons, selection: $selection) { $person in
            bindableCell($person)
//            cell(person)
                .onDelete(title: "Trash") {
                    persons.remove(person)
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button(action: {
                        print("Swiped: \(person.name)")
                    }, label: {
                        Text("Button")
                    })
                }
        }
        .background(.teal)
        .refreshable {
            persons.append(Person(name: "Deane"))
        }
        .toolbar {
            ToolbarItem {
                EditButton()
            }
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                ForEach(selection) { person in
                    Text(person.name)
                }
            }
        }
    }
    
    func bindableCell(_ person: Binding<Person>) -> some View {
        HStack {
            TextField("Name", text: person.name)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
            Text(person.wrappedValue.name)
        }
        .padding(.horizontal)
    }
    
    func cell(_ person: Person) -> some View {
        Text(person.name)
            .padding(.horizontal)
    }
    
}

struct Roll<Data, Cell>: View where Data: RandomAccessCollection & MutableCollection, Data.Element: Identifiable & Hashable, Cell: View {
    
    @Binding private var data: Data
    @ViewBuilder private var cell: (Binding<Data.Element>) -> Cell
    @Binding private var selection: [Data.Element]
    
    init(_ data: Binding<Data>, selection: Binding<[Data.Element]>? = nil, cell: @escaping (Binding<Data.Element>) -> Cell) {
        self._data = data
        self.cell = cell
        self.usesSelection = selection != nil
        self._selection = selection ?? .constant([])
    }
    
    @State private var usesSelection = false
    @State private var selectionIDs = Set<Data.Element.ID>()
    
    var body: some View {
        Group {
            if usesSelection {
                List($data, selection: $selectionIDs) { $person in
                    cell($person)
                        .listRowBackground(Color.clear)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                }
                .onChange(of: selectionIDs) { oldValue, newValue in
                    selection.removeAll()
                    newValue.forEach { id in
                        data.forEach { element in
                            if element.id == id {
                                selection.append(element)
                            }
                        }
                    }
                }
            } else {
                List {
                    ForEach($data) { $person in
                        cell($person)
                    }
                    .onMove(perform: { indices, newOffset in
                        data.move(fromOffsets: indices, toOffset: newOffset)
                    })
                    .listRowBackground(Color.clear)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .listRowSeparator(.hidden)
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}

extension View {
    func onDelete(title: String? = nil, _ action: @escaping () -> Void) -> some View {
        self.swipeActions(edge: .trailing, allowsFullSwipe: true) {
            Button(role: .destructive) {
                withAnimation {
                    action()
                }
            } label: {
                if let title {
                    Text(title)
                } else {
                    Image(systemName: "trash")
                }
            }

        }
    }
}

extension Array where Element: Equatable {
    mutating func remove(_ element: Element) {
        guard let index = self.firstIndex(of: element) else { return }
        _ = withAnimation {
            self.remove(at: index)
        }
    }
}
