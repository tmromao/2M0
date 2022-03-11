//
//  StateManager.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 12/11/2021.
//

import Foundation

class StateManager: ObservableObject {
    
    @Published var selectedTabByDefault = 1
    
    @Published var selectedProductIndex: Int?
    
    @Published var isHomeNavActive: Bool = false
    
    @Published var isNavBarHidden: Bool = true
    
    @Published var selectedTab : Int? = 1
    
    
}
