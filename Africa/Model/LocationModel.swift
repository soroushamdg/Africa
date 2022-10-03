//
//  LocationModel.swift
//  Africa
//
//  Created by Soro on 2022-10-03.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable{
    var id: String
    var image: String
    var name: String
    var latitude: Double
    var longitude: Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
