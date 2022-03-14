//
//  HomeDetailThirdView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct HomeDetailThirdView: View {
   
    // MARK : - PROPERTIES
    var title : String
    var subTitle : String
    var imageWTitle : String
    var imageDetail : String
    let recommendation : String
    let quantity : String
    let ingredients : String
    let intake : String
    let advertences : String
    
    @Environment(\.rootPresentationMode) var rootPresentationMode
    
    var body: some View {

       
        // MARK : - BODY
        VStack {
            
            Image(imageDetail)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            Text(title)
//            Text(subTitle)
//            Text(recommendation)
//            Text(quantity)
//            Text(ingredients)
//            Text(intake)
//            Text(advertences)
            
        }
                
    }
}

struct HomeDetailThirdView_Previews: PreviewProvider {
    
    //Loading JSON static data
    static let JSONHawaProducts : [JSONProduct] = Bundle.main.decode("JSONHawaProducts.json")
    
    static var previews: some View {
        HomeDetailThirdView(title : JSONHawaProducts[0].title,
                            subTitle: JSONHawaProducts[0].subTitle ,
                            imageWTitle: JSONHawaProducts[0].imageWTitle,
                            imageDetail: JSONHawaProducts[0].imageDetail,
                            recommendation: JSONHawaProducts[0].recommendation,
                            quantity: JSONHawaProducts[0].quantity,
                            ingredients: JSONHawaProducts[0].ingredients,
                            intake: JSONHawaProducts[0].intake,
                            advertences: JSONHawaProducts[0].advertences
        )
        
//        HomeDetailThirdView(title : "Teste",
//                            subTitle: "" ,
//                            imageWTitle: "",
//                            imageDetail: "",
//                            recommendation: "",
//                            quantity: "",
//                            ingredients: "",
//                            intake: "",
//                            advertences: ""
//        )
    }
}
