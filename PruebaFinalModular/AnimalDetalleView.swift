//
//  AnimalDetalleView.swift
//  PruebaFinalModular
//
//  Created by Luis on 29/4/24.
//

import SwiftUI

struct AnimalDetalleView: View {
    var animal : Animal
    
    var body: some View {
        ScrollView {
            VStack {
                Image(animal.picture)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, alignment: .center)
                Text(animal.description)
                    .fontWeight(.regular)
                    .padding(10)
            }
            .navigationTitle(animal.name)
        }
        
    }
}

struct AnimalDetalleView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetalleView(animal: Animal(name: "Penguin", picture: "penguinPic", description: "Penguins are a group of aquatic flightless birds from the family Spheniscidae of the order Sphenisciformes. They live almost exclusively in the Southern Hemisphere."))
    }
}
