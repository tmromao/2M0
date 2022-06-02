//
//  Header2MLogoView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/03/2022.
//

import SwiftUI

struct Header2MLogoView: View {
    var body: some View {
        
            ZStack {
                Rectangle()
                    .foregroundColor(Color("2M_Color_Dark_Grey"))
                    
                Image("2m-logo-131x131px")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask(Circle())
                    .overlay(Circle().stroke(Color("2M_Color_Dark_Grey"), lineWidth: 15))
                    .frame(width: 98, height: 80, alignment: .center)
            }
            .frame(maxWidth: .infinity, maxHeight:95)
    }
}

struct Header2MLogoView_Previews: PreviewProvider {
    static var previews: some View {
        Header2MLogoView()
    }
}
