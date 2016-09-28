//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Flatiron School on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        pizzasAvailable = 10
    }
    func isInRange(destination: Coordinate) -> Bool {
        //if destination =< 5000 -> true
        let inRange = destination.distanceTo(coordinate: location) <= 5000.00
        return inRange
    }
    
    func deliverPizzaTo(destination:Coordinate) -> Bool{
        if isInRange(destination: location) {
            pizzasAvailable = pizzasAvailable - 1
            if pizzasAvailable == 0 {
                return false
            }
            
            return true
        }
        else {
            return false
        }
    }
}
