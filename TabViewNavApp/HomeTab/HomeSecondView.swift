//
//  HomeView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 21/11/2021.
//

import SwiftUI

//TODO :- Change view naming

struct HomeSecondView: View {
    
    // MARK:- PROPERTIES
    
    // MARK:- BODY
    
    var body: some View {
        
        VStack(spacing:5) {
            
          //MARK - Header 2M Logo View
            Header2MLogoView()
            
            VStack(content:{
                Text("Missão")
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Text("A qualidade dos nossos produtos e serviços é a nossa primeira prioridade, para alcançar a plena satisfação dos nossos clientes e descobrir novos caminhos para uma saúde natural. Através de uma atualização científica constante, pretendemos desenvolver produtos que respondam às necessidades dos profissionais de saúde e que contribuam para o bem-estar e saúde de todos.")
                    .font(.system(size: 12, weight: .light, design: .serif))
                })
                .padding()
                .background(Color.gray)

            // MARK : - VISAO
            
            VStack(content: {
                Text("Visão")
                    .font(.title)
                    .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Com os olhos postos no futuro, concentramos os nossos esforços na procura das últimas evidências científicas, novas tecnologias de fabrico e novas formas de diagnóstico, para levar o melhor até si. Pretendemos ser uma empresa de referência na medicina do futuro, onde “a ciência e a tecnologia se unem.")
                
            })
                .padding()
            
            // MARK :- FORMAçÃO
            VStack(content:  {
                Text("Formação")
                    .font(.title)
                    .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("A aposta no desenvolvimento e atualização de conhecimentos e competências é um dos compromissos que mantemos com os profissionais de saúde. Através de ações de formação e webinars com temas atuais, para uma atualização dos seus conhecimentos, em benefício dos pacientes.")
                
            })
                .padding()
            
           
            // MARK :- PARCERIAS
            
            VStack (content: {
                Text("Parcerias")
                    .font(.title)
                    .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Devido à extensa experiência internacional, a 2M Pharma colabora com empresas líderes nos seus países, principalmente Espanha através da Gessal Nutraceuticals e Angola com a Unicare Healthcare Solutions.")
            })
                .padding()
        
            
            // MARK :- Botáo para linkar ecrã seguinte
            NavigationLink { HomeThirdView() } label: {
                VStack{
                    //         Text("Second view - \(index)")
                    Text("Click me to go to the Third View")
                }
            }//NAVIGATION LINK
            .navigationTitle("HomeSecondView")
        }// VStack
        
    }
    
}

struct HomeSecondView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeSecondView()
                .preferredColorScheme(.dark)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
            HomeSecondView()
                .preferredColorScheme(.light)
                .environmentObject(StateManager())
                .previewDevice("iPhone 13")
        }
    }
}

