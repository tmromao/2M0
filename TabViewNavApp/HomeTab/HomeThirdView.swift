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
        
        //ZStack {
            
           // VStack(spacing: 0) {
                                
                //TODO :- ALTERAR PARA MULTILINE
                VStack(spacing: 0) {
                    
                    Header2MLogoView()
                    
                    VStack(alignment:.leading,spacing: 0) {
                        Text("Fale\nconnosco.")
                            .frame(maxWidth: .infinity, minHeight: 80, alignment: .leading)
                            .font(.title)
                            .lineLimit(2)
                            //.padding(.bottom,0)
                            .foregroundColor(Color("2M_Color_Blue"))
                            
                            
                        Text("Teremos todo o gosto em ajudá-lo a\nesclarecer qualquer dúvida ou questão.")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, minHeight: 80, alignment: .leading)
                            //.padding(.top,0)
                
                        Text("EDIFÍCIO 2M PHARMA")
                            .font(.headline)
                            .fontWeight(.bold)
                            //.padding(.top,0)
                            //.padding(.bottom,0)
                        
                        Text("Rua Quinta do Bom Retiro, 9A\n2820-690 Charneca de Caparica\nPortugal")
                        .font(.body)
                        //.padding(.top,1)
                        //.padding(.bottom,2)
                        
                        Link("+351211384961", destination: URL(string: "tel:211384961")!)
                        
                        Link("info@2mpharma.pt",
                        destination: URL(string: "mailto:info@2mpharma.pt")!)
                        
                    }//VSTACK
                    .padding(.horizontal)
                    
                    //MARK - MAP VIEW
                    MapView()
                        .padding()
                        
                    //MARK - SOCIAL Networks
                    SocialNetworksLogosView()
                    
                    Spacer()
                }// V-STACK
                
        }//BODY
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
