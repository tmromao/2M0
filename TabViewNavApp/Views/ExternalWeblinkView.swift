//
//  ExternalWeblinkView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 15/03/2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    //MARK :- PROPERTIES
    
    // MARK :- BOBY
    
    var body: some View {
        GroupBox {
        HStack {
            Image(systemName: "globe")
            Text("Wikipedia")
            Spacer()
            
            Group {
                Image(systemName: "arrow.up.right.square")
                
                Link("coisa", destination: (URL(string: "www.wikipedia.com") ?? URL(string: "https://wikipedia.org"))!)
            }
        }//: HSTACK
        }// : BOX
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWeblinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
