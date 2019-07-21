//
//  ProfileRow.swift
//  swiftui-combine
//
//  Created by Sergio Gelves on 20/07/19.
//  Copyright © 2019 Sergio Gelves. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct ProfileItem: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    fileprivate var coordinates: Coordinates
    var state: ProfileState
    var gender: ProfileGender
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum ProfileState: Int, Codable, Hashable {
        case available = 1
        case disconected = 2
        case noDisturb = 3
    }
    
    enum ProfileGender: String, Codable, Hashable {
        case male = "male"
        case female = "female"
        case another = "another"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
