//
//  SocialNetworksLogosView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 23/03/2022.
//

import SwiftUI

struct SocialNetworksLogosView: View {
    var body: some View {
        HStack(spacing:40) {
            
            // INSTAGRAM
            
            Link(destination: .init(string:"https://www.instagram.com/")!)
            {
                Image("social_icons_2m_app-1")
                    .resizable()
                    .frame(width: 50, height: 50)
                
            }
            
            // FACEBOOK
            Link(destination: .init(string:"https://www.facebook.com/")!) {
                Image("social_icons_2m_app-2")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            // LINKEDIN
            Link(destination: .init(string:"https://www.linkedin.com/")!) {
                Image("social_icons_2m_app-3")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            // YOUTUBE
            Link(destination: .init(string:"https://www.youtube.com/")!) {
                Image("social_icons_2m_app-4")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding()
    }
}

struct SocialNetworksLogosView_Previews: PreviewProvider {
    static var previews: some View {
        SocialNetworksLogosView()
    }
}
