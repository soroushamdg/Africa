//
//  VideoListView.swift
//  Africa
//
//  Created by Soro on 2022-10-02.
//

import SwiftUI

struct VideoListView: View {
     
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView{
            List{
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) {
                        VideoListItem(video: video)
                            .padding(.vertical,8)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action:{
                        videos.shuffle()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
