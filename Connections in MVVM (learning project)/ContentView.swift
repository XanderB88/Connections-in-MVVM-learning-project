//
//  ContentView.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingFirstView = false
    @State private var showingSecondView = false
    var body: some View {
            if showingFirstView {
                FirstScreen(viewModel: MainViewModel(), showingFirstView: $showingFirstView)
            } else if showingSecondView {
                SecondScreen(viewModel: MainViewModel(), showingSecondView: $showingSecondView)
            } else {
                MainScreen(viewModel: MainViewModel(), showingFirstView: $showingFirstView, showingSecondView: $showingSecondView)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
