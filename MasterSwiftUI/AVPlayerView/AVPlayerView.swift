//
//  AVPlayerView.swift
//  MasterSwiftUI
//
//  Created by Alex Nagy on 16.09.2024.
//

import SwiftUI
import AVKit

struct AVPlayerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = AVPlayerViewController
    
    private var player: AVPlayer?
    private var isAutoPlaying: Bool
    private var isLooping: Bool
    
    init(_ player: AVPlayer?, isAutoPlaying: Bool = false, isLooping: Bool = false) {
        self.player = player
        self.isAutoPlaying = isAutoPlaying
        self.isLooping = isLooping
    }
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.view.backgroundColor = .clear
        controller.player = player
        controller.videoGravity = .resizeAspectFill
        if isAutoPlaying {
            controller.player?.play()
        }
        if isLooping {
            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
                controller.player?.seek(to: .zero)
                controller.player?.play()
            }
        }
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) { }
}
