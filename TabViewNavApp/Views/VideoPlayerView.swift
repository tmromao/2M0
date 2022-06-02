//
//  VideoPlayerView.swift
//  TabViewNavApp
//
//  Created by Tiago Miguel de Jesus Romao on 07/04/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    //MARK : - PROPERTIES
    
    // MARK :- BODY
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: "2mpharma", fileFormat: "mp4"))
        }
        .padding()
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
