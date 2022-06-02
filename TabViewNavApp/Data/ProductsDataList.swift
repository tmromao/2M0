//
//  ProductsDataList.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 02/12/2021.
//

import Foundation

// MARK:- Hawa products data

//let hawaProductsData:[Product] = [
//    Product( title: "hawa acid cell", subTitle: "Normalizacao da respiracao celular", image: "App_2M_Imagens-05-hawa-acid-cell-logo", recomendation: "descricao hawa acid cell", eficacy: "Alcanizador.."),
//    Product( title: "hawa biotic", subTitle: "headline", image: "image2", recomendation: "descricao hawa biotic", eficacy: "..."),
//    Product( title: "hawa depress", subTitle: "headline", image: "image3", recomendation: "descricao hawa depress", eficacy: "..."),
//    Product( title: "hawa digest", subTitle: "headline", image: "image4", recomendation: "descricao hawa digest", eficacy: "..."),
//    Product( title: "hawa diur", subTitle: "headline", image: "image5", recomendation: "descricao hawa diur", eficacy: "..."),
//    Product( title: "hawa enzym", subTitle: "headline", image: "image6", recomendation: "descricao hawa enzym", eficacy: "...")
//]

// MARK -- Hawa JSON Data
let JsonHawaProducts : [JSONProduct] = Bundle.main.decode("JSONHawaProducts_final_05-05-2022.json")


// MARK:- Oxxy products data

//let oxxyProductsData:[Product] = [
//    Product( title: "oxxy", subTitle: "oxxy", image: "image1", recomendation: "descricao oxxy", eficacy: "oxxy.")
//    
//]


//MARK -- Oxxy JSON Data
let JsonOxxyProducts : [JSONProduct] = Bundle.main.decode("JSONOxxyProducts_final_05-05-2022.json")

// MARK:- PRIMALAB products data

//let primaLabProductsData:[Product] = [
//    Product( title: "primalab", subTitle: "primalab", image: "image1", recomendation: "descricao primalab", eficacy: "primalab.")
//    
//]


//MARK -- Primalab JSON Data
let JsonPrimaLabProducts : [JSONProduct] = Bundle.main.decode("JSONPrimaLabProducts.json")
