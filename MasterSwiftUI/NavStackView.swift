//
//  NavStackView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 28.05.2024.
//

import SwiftUI

struct NavStackView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                    .background {
                        Color.mint
                            .ignoresSafeArea()
                    }
                ScrollView {
                    Image(systemName: "hand.wave.fill")
                        .font(.largeTitle)
                    TextField("", text: .constant(""))
                }
            }
            .navigationTitle("Nav Stack")
            .navigationBarTitleDisplayMode(.inline)
//            .toolbar(.hidden, for: .navigationBar)
            .toolbar {
                ToolbarItem {
                    ControlGroup {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "person")
                        })
                        //                        .foregroundStyle(.white)
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "person.fill")
                        })
                        //                        .foregroundStyle(.white)
                    }
                    .controlGroupStyle(.navigation)
                }
            }
            
//            ZStack {
//                
//                Color.mint
//                    .ignoresSafeArea()
//                
//                Color.white
//                    .ignoresSafeArea(.container, edges: .bottom)
//                
//                ScrollView {
//                    Image(systemName: "hand.wave.fill")
//                        .font(.largeTitle)
//                }
//                    .navigationTitle("Nav Stack")
//            }
        }
    }
}

#Preview {
    NavStackView()
}
