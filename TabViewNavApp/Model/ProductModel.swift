//
//  ProductModel.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 29/11/2021.
//

import Foundation

struct Product: Identifiable{
    
    var id = UUID()
    var title : String
    var subTitle : String
    var image: String
    var recomendation: String
    var eficacy: String
}
