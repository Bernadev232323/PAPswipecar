//
//  CarListing.swift
//  SwipecarPAP
//
//  Created by Bernardo Simoes on 21/09/2026.
//

import Foundation

struct CarListing: Identifiable {
    var id = UUID()
    var brand: String
    var model: String
    var year: Int
    var price: Double
    var mileage: Double
    var imageName: String
}
