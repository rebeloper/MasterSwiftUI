//
//  Tab1View.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 30.04.2024.
//

import SwiftUI

struct Tab1View: View {
    
    @EnvironmentObject private var tabsController: TabsController
    
    var body: some View {
        VStack {
            Text("Hello, Tab1View!")
            Button("Go to 3") {
//                tabsController.selectedTab = Tabs.three
                tabsController.jump(to: .three)
            }
        }
    }
}

