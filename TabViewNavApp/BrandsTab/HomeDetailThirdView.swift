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
    var image : String
    
    @Environment(\.rootPresentationMode) var rootPresentationMode
    
    var body: some View {

       
        // MARK : - BODY
        VStack {
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(title)
            Text(subTitle)
            
        }
        
//        NavigationLink {
//
//            HomeThirdView()
//        }
//        label: {
//            Button(action: {
//
//                rootPresentationMode.wrappedValue.dismiss()
//
//            }, label: {
//                Text("one step back")
//            })
//        }
//      .navigationTitle("HomeDetailThirdView")
//
        
    }
}

struct HomeDetailThirdView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailThirdView(title : "Teste", subTitle : "Teste", image: "")
    }
}
