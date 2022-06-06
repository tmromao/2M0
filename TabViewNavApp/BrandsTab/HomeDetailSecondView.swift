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
                HawaProductsView()
                
                //MARK : - LISTA DE PRODUTOS OXXY
            case 2:
                OxxyProductsView()
                
                //MARK : - LISTA DE PRODUTOS PRIMALAB
            case 3:
               PrimalabProductsView()
            default:
                Text ("Não devia ter passado")
                
            }
            Spacer(minLength: 0)
            
        }//VSTACK
        //.ignoresSafeArea(.true)
        
    }
    
    // MARK: HawaProductsView
    @ViewBuilder
    func HawaProductsView()->some View {
        VStack(spacing:0) {
            //                        Text("Resultou 1 - Passar lista de produtos Hawa")
            //                        Text(hawaProductsData[0].title)
            Image("App_2M_Imagens-17-hawa-pharma-logo")
                .resizable()
                .frame(height: 150)

            ScrollView{
                VStack(alignment: .leading, spacing: 0){
                    ForEach(JsonHawaProducts) { productItem in
                    NavigationLink(destination:
                                   HomeDetailThirdView(title: productItem.title,
                                                subTitle: productItem.subTitle,
                                                imageWTitle: productItem.imageWTitle,
                                                imageDetail: productItem.imageDetail,
                                                recommendation: productItem.recommendation,
                                                quantity: productItem.quantity,
                                                ingredients: productItem.ingredients,
                                                intake: productItem.intake,
                                                advertences: productItem.advertences,
                                                       colorProduct: productItem.colorProduct)) {
                        Image(productItem.imageWTitle)
                            .resizable()
                            //.aspectRatio(contentMode: )
                            .frame(maxWidth: .infinity, maxHeight: 250)
                            //.aspectRatio(contentMode: .fit)
                    }//END OF NAVIGATION LINK
                    .navigationBarTitleDisplayMode(.inline)
                    //.navigationBarHidden(true)

                }//END OF FOR EACH
                }// END OF VSTACK
//                .listRowInsets(EdgeInsets(top:0, leading: 0, bottom: 0, trailing: 0))
            }//END Of ScrollView
            .listStyle(SidebarListStyle())
        }//END Of VSTACK
    }
    
    // MARK : VIEW OxxyProductsView
    @ViewBuilder
    func OxxyProductsView() -> some View {
        VStack(spacing:0) {
            //                    Text("Resultou 2 - Lista de produtos Oxxy")
            Image("App_2M_Imagens-18-oxxy-logo")
                .resizable()
                .frame(height: 150)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(JsonOxxyProducts) { productItem in
                        NavigationLink(destination: HomeDetailThirdView(title: productItem.title,
                                                                        subTitle: productItem.subTitle,
                                                                        imageWTitle: productItem.imageWTitle,
                                                                        imageDetail: productItem.imageDetail,
                                                                        recommendation:productItem.recommendation,
                                                                        quantity:productItem.quantity,
                                                                        ingredients:productItem.ingredients,
                                                                        intake:productItem.intake,
                                                                        advertences:productItem.advertences,
                                                                        colorProduct: productItem.colorProduct)) {
                            //FOR DEBUG -> Text(productItem.title).font(.title)
                            Image(productItem.imageWTitle)
                                .resizable()
                                //.aspectRatio(contentMode: )
                                .frame(height: 250)
                        }//NAVIGATIONLINK
                        .navigationBarTitleDisplayMode(.inline)
                        //.navigationBarHidden(true)
                    }//END OF FOR EACH
                }
            }
            .listStyle(SidebarListStyle())
            
        }//END OF VSTACK
    }// END OF OxxyProductsView
    
    // MARK : VIEW PrimalabProductsView
    @ViewBuilder
    func PrimalabProductsView() -> some View {
        VStack(spacing:0) {
            //Text ("Resultou 3 - Lista de produtos Prima lab")
            Image("App_2M_Imagens-19-prima-logo")
                .resizable()
                .frame(height: 150)
            
            ForEach(JsonPrimaLabProducts) { productItem in
                NavigationLink(destination: HomeDetailThirdView(title: productItem.title,
                                                            subTitle: productItem.subTitle, imageWTitle: productItem.imageWTitle,
                                                        imageDetail: productItem.imageDetail,
                                                        recommendation: productItem.recommendation,
                                                        quantity:productItem.quantity,
                                                        ingredients:productItem.ingredients,
                                                        intake: productItem.intake,
                                                        advertences:productItem.advertences,
                                                                colorProduct: productItem.colorProduct)) {
                    Text(productItem.title)
                }//END OF NAVIGATIONLINK
                .navigationBarTitleDisplayMode(.inline)
                //.navigationBarHidden(true)
            }//END OF FOR EACH
            
        }// END OF VSTACK Primalab Products
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

    
