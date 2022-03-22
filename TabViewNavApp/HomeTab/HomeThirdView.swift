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
        
        ZStack {
            
            VStack(spacing: 0) {
                                
                Image("2m-logo-131x131px")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.gray)
                    .mask(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(radius: 10)
                
                VStack {
                    VStack(alignment:.leading) {
                        Text("Fale\nconnosco.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top,0)
                            .padding(.leading,8)
                        
                        Text("Teremos todo o gosto em ajudá-lo\na esclarecer qualquer dúvida ou questão.")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading,8)
                        
                        Text("EDIFÍCIO 2M PHARMA")
                            .font(.headline)
                            .fontWeight(.regular)
                            .padding(.top,2)
                            .padding(.leading,8)
                            .padding(.bottom,0)
                        
                        Text("Rua Quinta do Bom Retiro, 9A\n2820-690 Charneca de Caparica\nPortugal")
                        .font(.body)
                        .padding(.top,2)
                        .padding(.leading,8)
                        .padding(.bottom,2)
                        
                        Text("(+351) 211 384 961")
                        Text("info@2mpharma.pt")
                        MapView()
                        Text("Redes Sociais")
                    }
                }
                
                Button(action: {
                    stateManager.isHomeNavActive = false
                }, label: {
                    Text("HomeThirdView - Click me to go back to HomeView")
                    
                })//BUTTON
                
            }//VStack
        }//ZStack
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
