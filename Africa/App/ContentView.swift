//
//  ContentView.swift
//  Africa
//
//  Created by Soro on 2022-10-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("Africa",displayMode: .large)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
