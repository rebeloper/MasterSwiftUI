//
//  ContentView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 06.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack(content: {
                    ForEach(1...10, id: \.self) { count in
                        /*@START_MENU_TOKEN@*/Text("Placeholder \(count)")/*@END_MENU_TOKEN@*/
                    }
                })
                .border(.red, width: 1)
            }
            
            HStack(content: {
                ForEach(1...2, id: \.self) { count in
                    /*@START_MENU_TOKEN@*/Text("Placeholder \(count)")/*@END_MENU_TOKEN@*/
                }
            })
            .border(.red, width: 1)
        }
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}
