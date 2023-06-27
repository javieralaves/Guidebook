//
//  CityCard.swift
//  Guidebook
//
//  Created by Javier Alaves on 26/6/23.
//

import SwiftUI

struct CityCard: View {
    
    // Card needs to know what city it relates to
    var city: City
    
    var body: some View {
        
        ZStack {
            
            // This rectangle is the image
            Rectangle()
                .background(content: {
                    Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                // Need to specify this for Swift not to think it's an invisible rectangle, despite background
                .foregroundColor(.clear)
                .cornerRadius(15)

            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack (alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                    
                Spacer()
                Text(city.summary)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
        
    }
}

struct CityCard_Previews: PreviewProvider {
    static var previews: some View {
        CityCard(city: City(name: "Seoul",
                            summary: "The most wonderful city in the world, capital of South Korea. My soon to home to live my own real life K-drama.",
                            imageName: "tokyo",
                            attractions: [Attraction]()))
    }
}
