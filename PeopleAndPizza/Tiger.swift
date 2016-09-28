//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Flatiron School on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class tiger {
    var name: String
    var isHungry: Bool
    
    init(name: String, isHungry: Bool) {
        self.name = name
        self.isHungry = true
        func eat() {
          self.isHungry = false
        }
    }
}
