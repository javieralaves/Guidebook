//
//  ContentView.swift
//  Guidebook
//
//  Created by Javier Alaves on 26/6/23.
//

import SwiftUI

struct CityView: View {
    
    // State property because it's changed on the .onAppear
    @State var cities = [City]()
    
    // An instance of our data provider
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false) {
                
                VStack (spacing: 20) {
                    
                    // For each city, tapping into the name gets me the attraction view for that city
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                        }
                        
                    }
                    
                }
                .padding(.horizontal)
                // Not vertical because it interferes with ignoring safe area
                
            }
            .onAppear {
                // When screen appears, assign data service data to cities array
                cities = dataService.getFileData()
            }
        }
        .ignoresSafeArea()
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
