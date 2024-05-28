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
    
    @State private var appController = AppController()
    
    var body: some Scene {
        WindowGroup {
//            NavigationStack {
//                ContentView()
//            }
//            TabsView()
//                .environmentObject(tabsController)
//            TextFieldExamplesView()
//            DataHandlingView()
//                .environment(appController)
            NavStackView()
        }
    }
}
