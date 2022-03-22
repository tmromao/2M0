//
//  HomeThirdView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct HomeThirdView: View {
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        
        VStack {
            
            ZStack {
                Image("2m-logo-131x131px")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .frame(width: 100, height: 100, alignment: .center)
            }
            
            Spacer()
            
            VStack(spacing:5) {
                VStack {
                    Text("Fale connosco")
                    Text("Teremos todo o gosto em ajudá-lo a esclarecer qualquer dúvida ou questão.")
                    Text("""
EDIFÍCIO 2M PHARMA,\nRua Quinta do Bom Retiro, \n9A 2820-690 \nCharneca de Caparica Portugal
""")
                    
                    Text("mapa")
                    MapView()
                    Text("(+351) 211 384 961")
                    Text("info@2mpharma.pt")
                    Text("Redes Sociais")
                }
            }
            
            Button(action: {
                stateManager.isHomeNavActive = false
            }, label: {
                Text("HomeThirdView - Click me to go back to HomeView")
                
            })//BUTTON
            
        }//VStack
    }
}

struct HomeSThirdView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeThirdView()
                .preferredColorScheme(.dark)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
            HomeThirdView()
                .preferredColorScheme(.light)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
        }
    }
}
