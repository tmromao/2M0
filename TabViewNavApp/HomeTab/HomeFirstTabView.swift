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
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: .infinity, height: 100, alignment: .center)
                
                Image("2m-logo-131x131px")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .mask(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .frame(width: 100, height: 100, alignment: .center)
                
            }
            Spacer()
            // 2MPHARMA : BODY
            Text(
"""
A 2M Pharma é uma empresa farmacêutica nacional, empreendedora e inovadora, impulsionada pela paixão, investigação e descoberta, conquistando um notável prestígio não só a nível nacional, mas também nos mais exigentes mercados internacionais.\n\nCom foco na inovação e qualidade, somos especialistas no desenvolvimento, distribuição e comercialização de Dispositivos Médicos, Nutracêuticos e Cosmética para diversas áreas da saúde, com soluções de diagnóstico e terapêutica que respondem às necessidades e exigências de pacientes e profissionais de saúde.\n\nDinâmicos e focados no futuro, a 2M Pharma é uma empresa de confiança em constante evolução, que aposta na excelência e qualidade, assegurando a todos, utentes e profissionais de saúde, as ferramentas e respostas necessárias para poderem disfrutar de uma vida saudável.

Identificar necessidades e desenvolver novas respostas são ideais constantes que guiam o nosso trabalho e o nosso foco.\n\n • Dispositivos médicos de diagnóstico In Vitro;\n• Nutracêuticos fabricados em Portugal em laboratórios certificados com HACCP (Hazard Analysis and Critical Control Point) e de acordo com as Boas Práticas de Fabrico (GMP), no cumprimento de todos os parâmeros de qualidade exigidos para o sector a nível nacional e internacional;\n• Fabricante de Cosmética terapêutica à base de Ozono;
""")
                .font(.footnote)
                .padding()
            Spacer()
            NavigationLink(isActive: $stateManager.isHomeNavActive ) {
                
                HomeSecondView( )
            } label: {
                
                Text("Click me to go to HomeSecondView")
            }
            .navigationBarTitle(Text("Page 1"), displayMode:.inline)
            .navigationBarHidden(stateManager.isNavBarHidden)
        }//V-STACK
        
    }
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
