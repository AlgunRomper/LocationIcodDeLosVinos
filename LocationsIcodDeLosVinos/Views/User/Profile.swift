//
//  Profile.swift
//  LocationsIcodDeLosVinos
//
//  Created by Algun Romper  on 20.06.2023.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var goalDate = Date()
    
    static let `default` = Profile(username: "user")
    
}
