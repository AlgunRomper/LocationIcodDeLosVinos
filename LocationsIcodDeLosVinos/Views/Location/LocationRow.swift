//
//  LocationRow.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 16.06.2023.
//

import SwiftUI

struct LocationRow: View {
    var location: Location
    
    var body: some View {
        HStack {
            location.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(location.name)
            
            Spacer()
            
            if location.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        LocationRow(location: ModelData().locations[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
