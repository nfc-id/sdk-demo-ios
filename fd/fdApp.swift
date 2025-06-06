//
//  fdApp.swift
//  fd
//
//  Created by Alberto Calderón on 24-12-24.
//

import SwiftUI
import sdk

@main
struct fdApp: App {
    init () {
        AmparoId.amaparoInit()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
