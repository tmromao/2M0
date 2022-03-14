//
//  HomeDetailFirstView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct HomeDetailFirstView: View {
    
    //PROPERTIES
    
    @EnvironmentObject var stateManager: StateManager
    let jsonBrands:[JSONBrand] = Bundle.main.decode("brands.json")
    
    
    //BODY
    var body: some View {
        
        VStack {
            Image("2m-logo-131x131px")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .mask(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .frame(width: 100, height: 100, alignment: .center)
            
            ForEach(jsonBrands) { brand in
               
                NavigationLink(tag: brand.id, selection: $stateManager.selectedProductIndex){
                    HomeDetailSecondView(index: brand.id)
                }
            label: {
                HStack {
                    Image(brand.imageWTitle)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    //Text("\(brand.title)").font(.largeTitle)
                }//HStack
            }//LABEL
            }// LIST
            
            /*---SUBTITUTE
            List(BrandsDataModel.brandsData, id:\.self) { brand in
               
                NavigationLink(tag: brand.id, selection: $stateManager.selectedProductIndex){
                    HomeDetailSecondView(index: brand.id)
                }
            label: {
                HStack {
                    Image(brand.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    //Text("\(brand.title)").font(.largeTitle)
                }//HStack
            }//LABEL
            }// LIST
             EOD OF SUBSTITUITON----*/
            
        }// VSTACK
        //        VStack{
        //            List(1...20, id:\.self){ item in
        //
        //                NavigationLink(tag: item, selection: $stateManager.selectedProductIndex){
        //
        //                    HomeDetailSecondView(index: item)
        //                } label: {
        //
        //                    Text("Produto : \(item)")
        //                }
        //
        //            }//LIST
        //        }//VStack
    }
    
    
}

struct HomeDetailFirstView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeDetailFirstView()
                .preferredColorScheme(.dark)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
            
            HomeDetailFirstView()
                .preferredColorScheme(.light)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
        }
    }
}


