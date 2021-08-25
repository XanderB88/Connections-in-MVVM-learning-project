//
//  SecondScreen.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct SecondScreen: View {
    @StateObject var viewModel: MainViewModel
    @State var pickerStates = ["1", "2", "3"]
    @State var selectedItem: String = ""
    
    var body: some View {
        VStack {
            Picker("States", selection: $selectedItem, content: {
                ForEach(0..<pickerStates.count, content: { index in
                    Text(pickerStates[index])
                })
            })
           
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(viewModel: MainViewModel())
    }
}
