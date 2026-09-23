//
//  ContentView.swift
//  SwipecarPAP
//
//  Created by Bernardo Simoes on 21/09/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var carShowed = 0
    
    let carros: [CarListing] = [
            CarListing(
                brand: "Carro1",
                model: "Modelo1",
                year: 2004,
                price: 32,
                mileAge: 145000,
                imageName: "carro1"
            ),
            
            CarListing(
                brand: "Carro2",
                model: "Modelo2",
                year: 1992,
                price: 28000,
                mileAge: 180000,
                imageName: "carro2"
            ),
            
            CarListing(
                brand: "Carro3",
                model: "Modelo3",
                year: 1995,
                price: 12000,
                mileAge: 160000,
                imageName: "carro3"
            )
        ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(carros[carShowed].brand) \(carros[carShowed].model)")
                    .font(.largeTitle)
                Text("Ano: \(carros[carShowed].year)")
                Text("Preço: \(carros[carShowed].price) €")
                Text("Quilómetros: \(carros[carShowed].mileAge) km")
                
                Button("Like") {
                    while carShowed < 3 {
                        carShowed += 1
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    ContentView()
}
