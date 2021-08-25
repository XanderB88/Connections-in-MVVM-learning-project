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
    @Binding var showingSecondView: Bool
    
    var body: some View {
        VStack {
            Picker("States", selection: $selectedItem, content: {
                ForEach(0..<pickerStates.count, content: { index in
                    Text(pickerStates[index])
                })
            })
            Button(action: {
                viewModel.textFieldText = selectedItem
            }, label: {
                Text("Save")
                    .foregroundColor(.white)
            })
            .frame(width: 120, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue))
            Button(action: {
                self.showingSecondView.toggle()
            }, label: {
                Text("Main Screen")
                    .foregroundColor(.white)
            })
            .frame(width: 120, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue))
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(viewModel: MainViewModel(), showingSecondView: .constant(true))
    }
}
