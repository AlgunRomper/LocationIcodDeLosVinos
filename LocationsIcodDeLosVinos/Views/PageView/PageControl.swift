//
//  PageControl.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 21.06.2023.
//

import SwiftUI
import UIKit

struct PageControl: View, UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}

