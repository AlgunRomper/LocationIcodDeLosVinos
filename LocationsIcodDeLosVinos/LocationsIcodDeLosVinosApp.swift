//
//  LocationsIcodDeLosVinosApp.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 14.06.2023.
//

import SwiftUI

@main
struct LocationsIcodDeLosVinosApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
