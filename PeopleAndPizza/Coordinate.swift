//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Flatiron School on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Coordinate {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    var isNorthernHemisphere: Bool { return latitude > 0 }
    
    var isInSouthernHemisphere: Bool { return latitude < 0 }
    var isInWesternHemisphere: Bool { return longitude  > 0 }
    var isInEasternHemisphere: Bool { return longitude < 0 }
    var coordinate: Double = 0.0
    
    func distanceTo(coordinate: Coordinate) -> Double {
        let distance = acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians - coordinate.longitude.radians)) * 6371000 / 1000
        return distance
    }
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}


extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
