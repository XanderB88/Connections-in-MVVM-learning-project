//
//  MainScreen.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct MainScreen: View {
    @StateObject var viewModel: MainViewModel
    @Binding var showingFirstView: Bool
    @Binding var showingSecondView: Bool
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 40) {
                Text(viewModel.textFieldText)
                    .font(.title)
                Text(viewModel.pickerState)
                    .font(.title)
            }
            HStack(spacing: 40) {
                Button(action: {
                    self.showingFirstView.toggle()
                }, label: {
                    Text("First Screen")
                        .foregroundColor(.white)
                })
                .frame(width: 120, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue))
                Button(action: {
                    self.showingSecondView.toggle()
                }, label: {
                    Text("Second Screen")
                        .foregroundColor(.white)
                })
                .frame(width: 120, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue))
            }
        }
        .environmentObject(viewModel)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(viewModel: MainViewModel(), showingFirstView: .constant(false), showingSecondView: .constant(false))
    }
}
