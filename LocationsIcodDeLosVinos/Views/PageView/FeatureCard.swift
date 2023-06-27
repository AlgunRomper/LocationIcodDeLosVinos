//
//  FeatureCard.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 20.06.2023.
//

import SwiftUI

struct FeatureCard: View {
    var location: Location
    
    var body: some View {
        location.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay {
                TextOverlay(location: location)
            }
    }
}

struct TextOverlay: View {
    var location: Location
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]), startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title)
                    .bold()
                Text(location.city)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}
struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(location: ModelData().features[0])
    }
}
