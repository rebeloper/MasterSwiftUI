//
//  AVVideoPlayerView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 16.09.2024.
//

import SwiftUI
import AVKit

struct AVVideoPlayerView: View {
    
    private var player: AVPlayer?
    private var isAutoPlaying: Bool
    private var isLooping: Bool
    
    init(_ url: URL, isAutoPlaying: Bool = false, isLooping: Bool = false) {
        self.player = AVPlayer(url: url)
        self.isAutoPlaying = isAutoPlaying
        self.isLooping = isLooping
    }
    
    init(player: AVPlayer?, isAutoPlaying: Bool = false, isLooping: Bool = false) {
        self.player = player
        self.isAutoPlaying = isAutoPlaying
        self.isLooping = isLooping
    }
    
    var body: some View {
        AVPlayerView(player, isAutoPlaying: isAutoPlaying, isLooping: isLooping)
            .background {
                ProgressView()
            }
    }
}

