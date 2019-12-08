//
//  delegate.swift
//  Lessons swift
//
//  Created by Anton Klysa on 17.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit


//наследование
//инкапсуляция
//полиморфизм


//fisrt protocol

protocol Washing {
    func start() //required func
    func finish() //required func
    func increaseSpeed() //optional func
}

extension Washing {
    func increaseSpeed() {
        print("MY SPEED = 0")
        //empty implementation
    }
}


//second protocol

protocol Squeezing {
    func spin() //required func
}


protocol Cooking {
    
}



//classes

class WashingMachine: Washing, Squeezing {
    
    var weight: Float?
    
    //MARK: Squeezing
    
    func spin() {
        
    }
    
    
    //MARK: Washing
    
    func start() {
        print("START WASHING MASHINE")
    }
    
    func finish() {
        print("I AM DONE")
    }
    
    func increaseSpeed() {
        print("MY SPEED = 999")
    }
}

class DishWashingMachine: Washing, Squeezing {
    
    //MARK: Squeezing
    
    func start() {
        print("DON'T TOUCH ME")
        finish()
    }
    
    //MARK: Washing
    
    func finish() {
        print("OK BRO")
        start()
    }
    
    func spin() {
        
    }
}


class Human {
    
    var washDelegate: (Washing & Squeezing)?
    var cookDelegate: Cooking?
    
    func washingInTheEndOfWeek() {
        self.washDelegate?.start()
        
        washDelegate?.increaseSpeed()
        
        washDelegate?.finish()
    }
}
