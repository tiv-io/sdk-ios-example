//
//  sdk_ios_exampleApp.swift
//  sdk-ios-example
//
//  Created by Ladislav Navratil on 25.01.2022.
//

import SwiftUI
import Tivio

@main
struct sdk_ios_exampleApp: App {
    
    var tivio = Tivio(secret: "xxxxx", deviceCapabilities: [], verbose: true)

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
