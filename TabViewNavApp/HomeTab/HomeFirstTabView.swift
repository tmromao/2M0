//
//  HomeFirstView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 25/11/2021.
//

import SwiftUI

struct HomeFirstTabView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var stateManager: StateManager
    
    // MARK: - BODY
    var body: some View {
        
        VStack {
                
                // 2MPHARMA : HEADER
                Header2MLogoView()
                
                //Spacer()
//                // 2MPHARMA : BODY
//
                Text(" 2M Pharma é uma empresa farmacêutica nacional, empreendedora e inovadora, impulsionada pela paixão, investigação e descoberta, conquistando um notável prestígio não só a nível nacional, mas também nos mais exigentes mercados internacionais.\nCom foco na inovação e qualidade, somos especialistas no desenvolvimento, distribuição e comercialização de Dispositivos Médicos, Nutracêuticos e Cosmética para diversas áreas da saúde, com soluções de diagnóstico e terapêutica que respondem às necessidades e exigências de pacientes e profissionais de saúde.")
                .font(.footnote)
                .padding()

//                VideoPlayerView()
                  
                Spacer()
                
    //            NavigationLink(isActive: $stateManager.isHomeNavActive ) {
    //
    //                HomeSecondView( )
    //            } label: {
    //
    //                Text("Click me to go to HomeSecondView")
    //            }
    //            .navigationBarTitle(Text("Page 1"), displayMode:.inline)
    //            .navigationBarHidden(stateManager.isNavBarHidden)
            }//V-STACK
        }// BODY
}

struct HomeFirstView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeFirstTabView()
                .preferredColorScheme(.dark)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
            HomeFirstTabView()
                .preferredColorScheme(.light)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
        }
    }
}
