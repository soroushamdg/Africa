//
//  ContentView.swift
//  Africa
//
//  Created by Soro on 2022-10-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals : [Animal] = Bundle.main.decode("animals.json")
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                        
                        
                }
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
