//
//  LocationList.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 16.06.2023.
//

import SwiftUI

struct LocationList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLocations: [Location] {
        modelData.locations.filter { location in
            (!showFavoritesOnly || location.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach (filteredLocations) { location in
                    NavigationLink {
                        LocationDetail(location: location)
                    } label: {
                        LocationRow(location: location)
                    }
                }
            }
            .navigationTitle("Locations")
        }
    }
}

struct LocationList_Previews: PreviewProvider {
    static var previews: some View {
        LocationList()
            .environmentObject(ModelData())
    }
}
