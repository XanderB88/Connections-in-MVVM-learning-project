//
//  Connections_in_MVVM__learning_project_App.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

@main
struct Connections_in_MVVM__learning_project_App: App {
    @StateObject var modelview = MainViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelview)
        }
    }
}
