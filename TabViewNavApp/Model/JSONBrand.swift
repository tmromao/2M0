//
//  CoverImage.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 07/03/2022.
//

import SwiftUI

struct JSONBrand:Codable, Identifiable {
    let id: Int
    let title: String
    let headline : String
    let image : String
    let description : String
}
