//
//  City.swift
//  Guidebook
//
//  Created by Javier Alaves on 26/6/23.
//

import Foundation

struct City: Identifiable {
    
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    // Each city has a list of associated attractions
    var attractions: [Attraction]
    
}
