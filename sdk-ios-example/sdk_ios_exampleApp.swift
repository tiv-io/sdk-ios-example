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
    
    var tivio = Tivio(secret: "5j24IFSmAxlhCIZ1KlKB", deviceCapabilities: [])

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
