//
//  PlayerView.swift
//  example-ios
//
//  Created by Ladislav Navratil on 17.01.2022.
//

import SwiftUI
import AVKit
import Tivio

struct PlayerView: View {
  private let player = AVPlayer()
  private var playerController: PlayerController {
    return PlayerController(player: self.player)
  }
  private let playerWrapper = Tivio.getPlayerWrapper()
  
  var body: some View {
    VideoPlayer(player: player)
      .onAppear() {
        self.playerWrapper.delegate = self.playerController
      }
      .onDisappear() {
      }
      .onTapGesture {
        if((player.currentItem == nil)) {
          playerWrapper.setSource(TivioPlayerSource(
            channel: "prima hd",
            mode: "timeshift",
            uri: "https://firebasestorage.googleapis.com/v0/b/tivio-production-input-admin/o/organizations%2Fl0Q4o9TigUUTNe6TYAqR%2Fchannels%2FhL1LtUhcsZuygmi1HjJI%2Fsections%2FNQlUj81wIf0Ev6qQzRIs%2Fvideos%2F2hAoiSigTZ6Q4QyAsWAi.mp4?alt=media&token=041e129c-c034-42c5-8db0-9fb13c0e8d4e",
            epgFrom: 20,
            epgTo: 20,
            startFromPosition: 0
          ))
        }
      }
  }
}
