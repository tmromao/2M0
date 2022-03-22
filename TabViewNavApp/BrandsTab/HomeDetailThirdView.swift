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
        ScrollView {
            VStack {
                
                // PRODUCT IMAGE
                Image(imageDetail)
                    .resizable()
                    .frame(height:180)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    //.aspectRatio(contentMode: .fit)
                
                //Spacer()
                VStack(alignment: .leading, spacing: 8) {
                    
                    //TÍTULO
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .foregroundColor(.black)
                    
                    //SUB TÍTULO
                    Text(subTitle)
                        .font(.headline)
                        .padding(.horizontal, 8)
                    
                    //RECOMENDAÇÃO
                    Text(recommendation)
                        .padding(.vertical, 8)
                
                    //QUANTIDADE
                    Text(quantity)
                        .padding(.vertical, 8)
                    
                    //INGREDIENTES
                    Text(ingredients)
                        .padding(.vertical, 8)
                        .multilineTextAlignment(.leading)
                    
                    //INTAKE
                    Text(intake)
                        .padding(.vertical, 8)
                    
                    // ADVERTENCES
                    Text(advertences)
                        .padding(.vertical, 8)
                        .multilineTextAlignment(.leading)

                }// END OF INNER VSTACK
                
            }
        }//END OF OUTER VSTACK
        Spacer(minLength: 0)
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
        
    }
}
