//
//  Attraction.swift
//  Guidebook
//
//  Created by Javier Alaves on 26/6/23.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
