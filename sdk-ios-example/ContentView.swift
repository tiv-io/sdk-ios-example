//
//  ContentView.swift
//  sdk-ios-example
//
//  Created by Ladislav Navratil on 25.01.2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    PlayerView()
      .transition(.move(edge: .bottom))
      .edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
