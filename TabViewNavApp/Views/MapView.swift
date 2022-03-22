//
//  MapView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 15/03/2022.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        InsetMapView()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 11 Pro")
    }
}
