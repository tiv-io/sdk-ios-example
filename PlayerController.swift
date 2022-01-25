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
  
  init(player: AVPlayer) {
    self.player = player
  }
  
  func seek(to miliseconds: UInt) {
    self.player.seek(to: CMTimeMake(value: Int64(miliseconds), timescale: 1000))
  }
  
  func setSource(_ source: TivioPlayerSource!) {
    self.player.replaceCurrentItem(with: AVPlayerItem(url: URL(string: source.uri)!))
    self.player.seek(to: CMTimeMake(value: Int64(source.startPosition), timescale: 1000))
    self.player.play()
  }
  
}
