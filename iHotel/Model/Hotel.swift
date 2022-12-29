//
//  Hotel.swift
//  iHotel
//
//  Created by Ping on 23/10/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Hotel: Hashable, Codable, Identifiable{
    var id:Int
    var name: String
    var starRating: Int
    var reviewScore: Double
    var reviewNumber: Int
    var addressStreet: String
    var addressSuburb: String
    var isFavorite: Bool
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    

    
    
    
    

    init(id: Int,name: String, starRating: Int,reviewScore: Double,reviewNumber: Int, addressStreet: String, addressSuburb: String, isFavorited: Bool,description: String, imageName: String, coordinates:Coordinates) {
        self.id = id
        self.name = name
        self.starRating = starRating
        self.reviewScore = reviewScore
        self.reviewNumber = reviewNumber
        self.addressStreet = addressStreet
        self.addressSuburb = addressSuburb
        self.isFavorite = isFavorited
        self.description = description
        self.imageName = imageName
        self.coordinates = coordinates
    }
    
    
}
