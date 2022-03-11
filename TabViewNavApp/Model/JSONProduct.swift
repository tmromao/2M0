//
//  JSONProduct.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 11/03/2022.
//

import SwiftUI

struct JSONProduct: Codable, Identifiable {
    let id: Int
    let title : String
    let subTitle: String
    let image: String
    let recommendation : String
    let efficacy : String
}
