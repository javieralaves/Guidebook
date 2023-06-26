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
        
        ScrollView {
            
            VStack {
                
                ForEach(cities) { city in
                    /*@START_MENU_TOKEN@*/Text(city.name)/*@END_MENU_TOKEN@*/
                }
                
            }
            .padding()
            .onAppear {
                // When screen appears, assign data service data to cities array
                cities = dataService.getData()
            }
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
