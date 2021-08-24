//
//  FirstScreen.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import SwiftUI

struct FirstScreen: View {
    @StateObject var viewModel: MainViewModel
    @State var typedText: String = ""
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            Text(viewModel.textFieldText)
            
            TextField("TypeText", text: $typedText)
                .foregroundColor(.black)
                .frame(width: 200, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 25.0)
                        .border(Color.black)
                        .foregroundColor(.white)
                )
            Button(action: {
                viewModel.textFieldText = typedText
                typedText = ""
            }, label: {
                Text("Save")
            })
            .frame(width: 120, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue))
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(viewModel: MainViewModel())
    }
}
