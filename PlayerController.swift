//
//  AVPlayerController.swift
//  example-ios
//
//  Created by Ladislav Navratil on 16.01.2022.
//

import Foundation
import Tivio
import AVFoundation

class PlayerController: TivioPlayerWrapperDelegate {
    
    var player: AVPlayer
    var playerWrapper: TivioPlayerWrapper = Tivio.getPlayerWrapper()
    
    init(player: AVPlayer) {
        self.player = player
        self.playerWrapper.delegate = self
        
        self.player.addPeriodicTimeObserver(forInterval: CMTime(seconds: 0.5, preferredTimescale: CMTimeScale(NSEC_PER_SEC)), queue: .main) { [weak self] time in
            self?.playerWrapper.reportTimeProgress(UInt(time.value)/1000000)
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlay), name: .AVPlayerItemDidPlayToEndTime, object: nil)
    }
    
    @objc func playerDidFinishPlay() {
        self.player.replaceCurrentItem(with: nil)
        
        self.playerWrapper.reportPlaybackEnded()
    }
    
    func seek(to miliseconds: UInt) {
        self.player.seek(to: CMTimeMake(value: Int64(miliseconds), timescale: 1000))
    }
    
    func setSource(_ source: TivioPlayerSource!) {
        self.player.replaceCurrentItem(with: AVPlayerItem(url: URL(string: source.uri)!))
        self.player.seek(to: CMTimeMake(value: Int64(source.startPosition), timescale: 1000))
        self.player.play()
    }
    
    func onAdMetadata(_ adMetadata: TivioAdMetadata!) {
        print("AdMetadata:", adMetadata!)
    }
    
    func onMarkers(_ markers: [TivioMarker]!) {
        print("Markers count:", markers.count)
    }
    
}
