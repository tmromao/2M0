//
//  InsetMapView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 15/03/2022.
//

import SwiftUI
import MapKit

struct InsetMapView: View {

    // MARK :- PROPERTIES
    
    //
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.64388, longitude: 9.18644), span: MKCoordinateSpan(latitudeDelta: 0.8, longitudeDelta: 0.8))
    
    
    // MARK :- BODY
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                } // NAVIGATION
                    .padding(12)
                , alignment: .topTrailing
                )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
