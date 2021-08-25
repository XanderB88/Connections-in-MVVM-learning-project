//
//  ContentView.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: MainViewModel
    @State private var showingView = false
    
    var body: some View {
        return Group {
            if showingView {
                FirstScreen(viewModel: MainViewModel())
            } else {
                MainScreen(viewModel: MainViewModel(), showingView: $showingView)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
