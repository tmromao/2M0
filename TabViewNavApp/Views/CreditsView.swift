//
//  CreditsView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct CreditsView: View {
    
    var body: some View {
        GroupBox(
            label:
                SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"))
                {
                    
                  SettingsRowView(name: "Developer",content: "Tiago Romão")
                    SettingsRowView(name: "Designer", content: "Tiago Romão")
                    SettingsRowView(name: "Compatibility", content: "iOS 15")
                    SettingsRowView(name: "WebSite", linkLabel: "Apple", linkDestination: "apple.com")
                    SettingsRowView(name:"Facebook", linkLabel: "Facebook", linkDestination: "facebook.com")
                    SettingsRowView(name:"Version", content: "1.0")
                }//:GROUPBOX
    }//BODY
    
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CreditsView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 13")
            
            CreditsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
        }
    }
}
