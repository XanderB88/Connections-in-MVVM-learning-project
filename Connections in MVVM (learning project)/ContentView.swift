//
//  ContentView.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: MainViewModel
    
    var body: some View {
        FirstScreen(viewModel: MainViewModel())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: MainViewModel())
    }
}
