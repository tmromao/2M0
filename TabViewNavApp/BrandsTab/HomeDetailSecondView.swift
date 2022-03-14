//
//  HomeDetailSecondView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct HomeDetailSecondView: View {
    
    // MARK :- PROPERTIES
    let index: Int
    
    //    @State var index = 1
    
    // MARK :- BODY
    var body: some View {
        
        return VStack {
            
            switch index {
            case 1:
                VStack {
                    //                        Text("Resultou 1 - Passar lista de produtos Hawa")
                    //                        Text(hawaProductsData[0].title)
                    
                    ForEach(JsonHawaProducts) { productItem in
                        NavigationLink(destination: /*EmptyView()*/
                                       HomeDetailThirdView(title: productItem.title,
                                                           subTitle: productItem.subTitle,
                                                           imageWTitle: productItem.imageWTitle,
                                                           imageDetail: productItem.imageDetail,
                                                           recommendation: productItem.recommendation,
                                                           quantity: productItem.quantity,
                                                           ingredients: productItem.ingredients,
                                                           intake: productItem.intake,
                                                           advertences: productItem.advertences)) {
//                            Text(productItem.title)
                            Image(productItem.imageWTitle)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }//NAVIGATIONLINL
                    }//LIST
                }//VSTACK
                .navigationTitle("Produtos Hawa")
                
                //MARK : - LISTA DE PRODUTOS OXXY
            case 2:
                VStack {
                    //                    Text("Resultou 2 - Lista de produtos Oxxy")
                    ForEach(JsonOxxyProducts) { productItem in
                        NavigationLink(destination: HomeDetailThirdView(title: productItem.title,
                                                                        subTitle: productItem.subTitle,
                                                                        imageWTitle: productItem.imageWTitle,
                                                                        imageDetail: productItem.imageDetail,
                                                                        recommendation:productItem.recommendation,
                                                                        quantity:productItem.quantity,
                                                                        ingredients:productItem.ingredients,
                                                                        intake:productItem.intake,
                                                                        advertences:productItem.advertences)) {
                            Text(productItem.title).font(.title)
                        }//NAVIGATIONLINK
                    }//LIST
                    
//                    List(oxxyProductsData) { productItem in
//                        NavigationLink(destination: /*EmptyView()*/ HomeDetailThirdView(title: productItem.title, subTitle: productItem.subTitle, image: productItem.image)) {
//                            Text(productItem.title).font(.title)
//                        }//NAVIGATIONLINK
//                    }//LIST
//
                }//VSTACK
                
                //MARK : - LISTA DE PRODUTOS PRIMALAB
            case 3:
                VStack {
                    Text ("Resultou 3 - Lista de produtos Prima lab")
                    
                    ForEach(JsonPrimaLabProducts) { productItem in
                        NavigationLink(destination: /*EmptyView()*/ HomeDetailThirdView(title: productItem.title,
                                                                    subTitle: productItem.subTitle, imageWTitle: productItem.imageWTitle,
                                                                imageDetail: productItem.imageDetail,
                                                                recommendation: productItem.recommendation,
                                                                quantity:productItem.quantity,
                                                                ingredients:productItem.ingredients,
                                                                intake: productItem.intake,
                                                                advertences:productItem.advertences)) {
                            Text(productItem.title)
                        }//NAVIGATIONLINK
                    }//LIST
                    
                    

                    
                }
            default:
                Text ("Não devia ter passado")
                
            }
            
        }//VSTACK
        
    }
}

struct HomeDetailSecondView_Previews: PreviewProvider {
    
    //static let jsonProducts : [JSONProduct] = Bundle.main.decode("JSONHawaProducts.json")
    
    static var previews: some View {
        Group {
            HomeDetailSecondView(index:1)
                .preferredColorScheme(.light)
            .previewDevice("iPhone 13")
            
            HomeDetailSecondView(index:1)
                .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
            
        }
    }
}

    
