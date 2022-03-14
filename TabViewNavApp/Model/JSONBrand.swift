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
    let subTitle : String
    let imageWTitle : String
    let imageDetail : String
    let recommendation : String
    let quantity : String
    let ingredients : String
    let intake : String
    let advertences : String
}
