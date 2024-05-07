//
//  MasterSwiftUIApp.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 06.02.2024.
//

import SwiftUI

@main
struct MasterSwiftUIApp: App {
    
    @StateObject private var tabsController = TabsController()
    
    var body: some Scene {
        WindowGroup {
//            NavigationStack {
//                ContentView()
//            }
//            TabsView()
//                .environmentObject(tabsController)
            TextFieldExamplesView()
        }
    }
}
