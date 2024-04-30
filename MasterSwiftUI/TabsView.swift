//
//  TabsView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 30.04.2024.
//

import SwiftUI

struct TabsView: View {
    
//    @State private var tabSelection = 1
    
    @EnvironmentObject private var tabsController: TabsController
    
    var body: some View {
        TabView(selection: $tabsController.selectedTab) {
            Tab1View()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Tab 1")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .badge(10)
                .tag(Tabs.one)
            
            Tab2View()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Tab 2")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .badge(0)
                .tag(Tabs.two)
            
            Tab3View()
                .tabItem {
                    Label("Tab 3", systemImage: "3.circle")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .badge("")
                .tag(Tabs.three)
            
            Tab4View()
                .tabItem {
                    Label("Tab 4", systemImage: "4.circle")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .badge("+")
                .tag(Tabs.four)
            
            Tab5View()
                .tabItem {
                    Label("Tab 5", systemImage: "5.circle")
                }
//                .toolbarBackground(.visible, for: .tabBar)
                .tag(Tabs.five)
            
            Tab6View()
                .tabItem {
                    Label("Tab 6", systemImage: "6.circle")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .tag(Tabs.six)
        }
        .tint(Color.orange)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
    }
}

#Preview {
    TabsView()
}
