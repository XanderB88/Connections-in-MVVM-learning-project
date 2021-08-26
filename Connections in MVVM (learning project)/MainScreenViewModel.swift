//
//  MainScreenViewModel.swift
//  Connections in MVVM (learning project)
//
//  Created by Alexander on 24.08.2021.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var textFieldText: String = "extFieldText"
    @Published var pickerState: Int = 0
    @Published var state: String = ""
    @Published var firstScreen: Bool = false
    
}
