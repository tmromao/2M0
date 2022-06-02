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
    let colorProduct: String
    
    @Environment(\.rootPresentationMode) var rootPresentationMode
    
    var body: some View {
        
        // MARK : - BODY
        ZStack {
            
//            Color.red
//                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 0) {
                
                // PRODUCT IMAGE
                Image(imageDetail)
                    .resizable()
                    .frame(height:165)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                //.aspectRatio(contentMode: .fit)
                
                VStack(spacing:0){
                    //TÍTULO
                    Text(title)
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.bottom,0)
                        .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                        .foregroundColor(.black)
                    
                    //SUB TÍTULO
                    Text(subTitle)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top,0)
                        .padding(.bottom,4)
                        .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                }
                .padding(.leading, 8)
                //RECOMENDAÇÃO
                Group {
                    Text("Recomendações")
                        .font(.title3)
                        .fontWeight(.semibold)
                    .padding(.bottom,4)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                    
                    Text("\(recommendation).")
                        .font(.body)
                        .fontWeight(.semibold)
                    .padding(.bottom,4)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                }
                .padding(.leading, 8)
                
                //QUANTIDADE
                Group {
                    Text("Quantidade líquida por embalagem : \(quantity)")
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.leading,8)
                    .padding(.bottom,4)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                }
                
                //INGREDIENTES
                Text("Composição por 2 cápsulas")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.leading,8)
                    .padding(.bottom, 4)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                
                Text("Ingredientes")
                    .font(.callout)
                    .fontWeight(.bold)
                    .padding(.leading,8)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                
                Text(ingredients)
                    .font(.headline)
                    .fontWeight(.regular)
                    .padding(.leading, 8)
                    //.multilineTextAlignment(.leading)
                
                //INTAKE
                Text("Modo de tomar")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.leading,8)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                
                Text(intake)
                    .font(.callout)
                    .fontWeight(.regular)
                    .padding(.leading, 8)
                
                // ADVERTENCES
                Text("Advertências\n\(advertences)")
                    .font(.caption2)
                    .padding(.leading, 8)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth:.infinity, minHeight: 10,alignment: .leading)
                
            }//END OF OUTER VSTACK
            
        }
        .background(Color(colorProduct))
        .ignoresSafeArea()
    }
    
    
}

// ATENCÃO AO JSON QUE ESTA A SER UTILIZADO

struct HomeDetailThirdView_Previews: PreviewProvider {
    
    //Loading JSON static data
    static let JSONHawaProducts : [JSONProduct] = Bundle.main.decode("JSONHawaProducts_final_05-05-2022.json")
    
    static var previews: some View {
        HomeDetailThirdView(title : JSONHawaProducts[0].title,
                            subTitle: JSONHawaProducts[0].subTitle ,
                            imageWTitle: JSONHawaProducts[0].imageWTitle,
                            imageDetail: JSONHawaProducts[0].imageDetail,
                            recommendation: JSONHawaProducts[0].recommendation,
                            quantity: JSONHawaProducts[0].quantity,
                            ingredients: JSONHawaProducts[0].ingredients,
                            intake: JSONHawaProducts[0].intake,
                            advertences: JSONHawaProducts[0].advertences,
                            colorProduct: JSONHawaProducts[0].colorProduct
        )
        
    }
}
