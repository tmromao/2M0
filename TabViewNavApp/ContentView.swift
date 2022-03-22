//
//  ContentView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 09/11/2021.
//

import SwiftUI

typealias RootPresentMode = Int?

private struct RootPresentationModeKey: EnvironmentKey {
    static let defaultValue: Binding<RootPresentMode> = .constant(nil)
}

extension EnvironmentValues {
    var rootPresentationMode: Binding<RootPresentMode> {
        get { self[RootPresentationModeKey.self] }
        set { self[RootPresentationModeKey.self] = newValue }
    }
}

extension RootPresentMode {
    mutating func dismiss(){
        self = nil
    }
}

struct ContentView: View {
    
    //MARK :- PROPERTIES
    
    @EnvironmentObject var stateManager: StateManager
    
    // MARK:- View 1
    var body: some View {
        
        VStack(spacing:0){
//        if (UIDevice.current.userInterfaceIdiom == .phone) {
            
            TabView( selection: $stateManager.selectedTabByDefault ) {
                
                //MARK 1 --- TABITEM 0 (Home)
                NavigationView { HomeFirstTabView()
                }
                
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
                
                
                //Mark 2 ------ Navigation view for list products
                NavigationView { HomeDetailFirstView()
                }
                .navigationBarTitle(Text("Brands"),displayMode:.inline)
                .navigationBarHidden(stateManager.isNavBarHidden)
                .environment(\.rootPresentationMode, $stateManager.selectedProductIndex)
                .tabItem{
                    //                Text("Page 2")
                    Label("Brands", systemImage: "list.dash")
                }
                .tag(1)
                
                CreditsView()
                    .tabItem{
                        //                Text("Page 3")
                        Label("Credits", systemImage: "info.circle.fill")
                        
                    }//TAB ITEM 2
                    .tag(2)
            }// TAB VIEW
//        }// UID DEVICE PHONE
//        else {
//            NavigationView {
//                List {
//
//                    NavigationLink("Home",
//                                   destination: HomeFirstTabView(),
//                                   tag:0,
//                                   selection:$stateManager.selectedTab)
//
//                }//LIST
//            }//Navigation view
//        }//ELSE --
        }//VSTACK
   
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(StateManager())
            
                .preferredColorScheme(.light)
                .previewDevice("iPhone 13")
                .navigationBarHidden(true)
            
            ContentView()
                .previewInterfaceOrientation(.portrait)
                .previewDevice("iPhone 13")
                .environmentObject(StateManager())
                .preferredColorScheme(.dark)
                .navigationBarHidden(true)
            
            
//            ContentView()
//                .previewInterfaceOrientation(.landscapeLeft)
//                .environmentObject(StateManager())
//                .previewDevice("iPad Pro (11-inch) (3rd generation)")
//            
//                .preferredColorScheme(.dark)
//                
        }
    }
}


////-MARK - SECOND TABITEM VIEWS
//struct HomeDetailSecondView: View {
//
//    let index: Int
//
//    var body: some View {
//
//
//    }
//
//}

//struct HomeDetailThirdView: View {
//
////    @Binding var isProductNavActive: Bool
////    @EnvironmentObject var stateManager: StateManager
//
//    @Environment(\.rootPresentationMode) var rootPresentationMode
//
//    var body: some View {
//
//        NavigationLink {
//
//            HomeThirdView()
//        }
//        label: {
//            Button(action: {
//
//                rootPresentationMode.wrappedValue.dismiss()
//
//            }, label: {
//                Text("one step back")
//            })
//        }
//      .navigationTitle("HomeDetailThirdView")
//    }
//}
