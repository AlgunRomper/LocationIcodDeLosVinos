//
//  PageView.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 20.06.2023.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map {FeatureCard(location: $0)})
            .aspectRatio(3/2, contentMode: .fit)
    }
}
