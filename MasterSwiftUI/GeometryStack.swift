//
//  GeometryStack.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 27.02.2024.
//

import SwiftUI

enum GeometryStackAlignment {
    case leading(spacing: CGFloat?), trailing(spacing: CGFloat?), verticalCentered(spacing: CGFloat?)
    case top(spacing: CGFloat?), bottom(spacing: CGFloat?), horizontalCentered(spacing: CGFloat?)
    case depth
}

struct GeometryStack<Content: View>: View {
    
    private var axis: GeometryStackAxis
    private var spacing: CGFloat?
    private var verticalAlignment: VerticalAlignment
    private var horizontalAlignment: HorizontalAlignment
    
    @ViewBuilder var content: (GeometryProxy) -> Content
    
    init(_ alignment: GeometryStackAlignment = .verticalCentered(spacing: nil), axis: GeometryStackAxis = .vertical, @ViewBuilder content: @escaping (GeometryProxy) -> Content) {
        self.axis = axis
        switch alignment {
        case .leading(let spacing):
            self.spacing = spacing
            self.horizontalAlignment = .leading
            self.verticalAlignment = .center
        case .trailing(let spacing):
            self.spacing = spacing
            self.horizontalAlignment = .trailing
            self.verticalAlignment = .center
        case .verticalCentered(let spacing):
            self.spacing = spacing
            self.horizontalAlignment = .center
            self.verticalAlignment = .center
        case .top(let spacing):
            self.spacing = spacing
            self.horizontalAlignment = .center
            self.verticalAlignment = .top
        case .bottom(let spacing):
            self.spacing = spacing
            self.horizontalAlignment = .center
            self.verticalAlignment = .bottom
        case .horizontalCentered(let spacing):
            self.spacing = spacing
            self.horizontalAlignment = .center
            self.verticalAlignment = .center
        case .depth:
            self.horizontalAlignment = .leading
            self.verticalAlignment = .center
        }
        
        self.content = content
    }
    
    var body: some View {
        GeometryReader { proxy in
            Group {
                switch axis {
                case .vertical:
                    VStack(alignment: horizontalAlignment, spacing: spacing) {
                        content(proxy)
                    }
                case .horizontal:
                    HStack(alignment: verticalAlignment, spacing: spacing) {
                        content(proxy)
                    }
                case .depth:
                    ZStack {
                        content(proxy)
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
    
    enum GeometryStackAxis {
        case vertical, horizontal, depth
    }
}

