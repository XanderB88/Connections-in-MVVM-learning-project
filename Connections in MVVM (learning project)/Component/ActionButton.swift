//
//  ActionButton.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct ActionButton: View {
    @EnvironmentObject var viewModel: MainViewModel
    @State var title: String
    @State var function: () -> Void
   
    var body: some View {
        Button(action: {
            self.function()
        }, label: {
            Text(title)
                .font(.system(size: 18))
                .foregroundColor(.white)
        })
        .frame(width: 120, height: 40)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue))
    }
}

