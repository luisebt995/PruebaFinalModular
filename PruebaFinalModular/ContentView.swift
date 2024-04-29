//
//  ContentView.swift
//  PruebaFinalModular
//
//  Created by Luis on 29/4/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModelObj = VMHandler()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModelObj.animals) { animal in
                    NavigationLink(destination: AnimalDetalleView(animal: animal)){
                        MostrarEnListView(animal: animal)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding([.top], 10)
            .navigationBarTitle("My 3 favorite animals")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MostrarEnListView: View {
    var animal  : Animal
    
    var body: some View {
        HStack {
            Image(animal.picture)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 200)
            VStack {
                Text(animal.name)
                    .fontWeight(.heavy)
                    .font(.system(size: 30))
                    
                Spacer()
                Text(animal.description)
                    .fontWeight(.light)
                    .lineLimit(2)
                Spacer()
            }
        }
    }
}
