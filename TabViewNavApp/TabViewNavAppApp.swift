//
//  TabViewNavAppApp.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 09/11/2021.
//

import SwiftUI
@main
struct TabViewNavAppApp: App {
    
    @StateObject var stateManager = StateManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
