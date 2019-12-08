//
//  lesson2.swift
//  Lessons swift
//
//  Created by Anton Klysa on 19.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit

 class Car {
    
    //MARK: properties
    
    var color: UIColor!
    var wheelsCount: Int!
    var trunk: Bool?
    
    //MARK: init

    init(selectColor: UIColor, selectWheelsCount: Int) {
        color = selectColor
        wheelsCount = selectWheelsCount
    }
    
    //MARK: func
    
    func drive() {
        print("car")
    }
    
    func driveWithParameters(kilometersPerHour: Int?, test123: Int?, test323: Int) {
        
    }
    
    func changeYourself() -> Car {
        self.color = .black
        self.trunk = false
        self.wheelsCount = 0
        return self
    }
    
    func driveWithParametersAndReturn(kilometersPerHour: Int) -> Int? {
        return 0
    }
}

class Mersedes: Car {
    
}

class Benz: Mersedes {
    override func drive() {
        print("benz")
    }
}
