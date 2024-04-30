//
//  TabsController.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 30.04.2024.
//

import SwiftUI

class TabsController: ObservableObject {
    @Published var selectedTab: Tabs = .two
    
    func jump(to tab: Tabs, animated: Bool = false) {
        if animated {
            withAnimation {
                selectedTab = tab
            }
        } else {
            selectedTab = tab
        }
    }
}

enum Tabs {
    case one, two, three, four, five, six
}
