//
//  MainScreen.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct MainScreen: View {
    @StateObject var viewModel: MainViewModel
    
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 40) {
                Text(viewModel.textFieldText)
                    .font(.title)
                Text(viewModel.pickerState)
                    .font(.title)
            }
            HStack(spacing: 40) {
                ActionButton(title: "First Screen", function: viewModel.firstScreen)
                    .environmentObject(viewModel)
                ActionButton(title: "Second Screen", function: viewModel.secondScreen)
                    .environmentObject(viewModel)
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(viewModel: MainViewModel())
    }
}
