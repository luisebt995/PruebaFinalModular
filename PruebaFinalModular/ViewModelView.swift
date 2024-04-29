//
//  ViewModelView.swift
//  PruebaFinalModular
//
//  Created by Luis on 29/4/24.
//

import SwiftUI

class VMHandler : ObservableObject{
    @Published var animals : [Animal] = []
    
    init(){
        self.animals = [
            Animal(name: "Penguin", picture: "penguinPic", description: "Penguins are a group of aquatic flightless birds from the family Spheniscidae of the order Sphenisciformes. They live almost exclusively in the Southern Hemisphere."),
            Animal(name: "Owl", picture: "owlPic", description: "Owls are birds from the order Strigiformes, which includes over 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight."),
            Animal(name: "Lion", picture: "lionPic", description: "The lion is a large cat of the genus Panthera, native to Africa and India. It has a muscular, broad-chested body; a short, rounded head; round ears; and a hairy tuft at the end of its tail.")
            ]
        }
}
