//
//  CategoryItem.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 19.06.2023.
//

import SwiftUI

struct CategoryItem: View {
    var location: Location
    
    var body: some View {
        VStack(alignment: .leading) {
            location.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 100)
                .cornerRadius(5)
            Text(location.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(location: ModelData().locations[0])
    }
}
