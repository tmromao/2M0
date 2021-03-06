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
        
        ZStack {
            
            VStack(spacing:0) {
                
                // MARK :- HEADERVIEW
                Header2MLogoView()
                
                VStack(spacing:0) {
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
                        .navigationBarHidden(true)
                    }// LIST
                    //.clipShape(RoundedRectangle(cornerRadius: 12))
                }//VSTACK
                //.frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
                Spacer(minLength: 0)
            }
            
        }
        //.edgesIgnoringSafeArea(.all)
        Spacer(minLength: 0)
    }//
    

    
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


