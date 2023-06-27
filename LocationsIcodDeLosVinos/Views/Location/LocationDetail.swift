//
//  LocationDetail.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 16.06.2023.
//

import SwiftUI

struct LocationDetail: View {
    @EnvironmentObject var modelData: ModelData
    var location: Location
    
    var locationIndex: Int {
        modelData.locations.firstIndex(where: {$0.id == location.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: location.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: location.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(location.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.locations[locationIndex].isFavorite)
                }
                HStack {
                    Text(location.city)
                        .font(.subheadline)
                    Spacer()
                    Text(location.island)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(location.name)")
                    .font(.title2)
                Text(location.description)
            }
            .padding()
            .padding()
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
    }
        
}

struct LocationDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LocationDetail(location: modelData.locations[0])
            .environmentObject(modelData)
    }
}
