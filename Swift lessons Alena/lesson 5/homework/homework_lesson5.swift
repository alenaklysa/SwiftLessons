//
//  homework_lesson5.swift
//  Lessons swift
//
//  Created by Anton Klysa on 19.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit


protocol ManagerProtocol {
    func findTaxi()
    
}
extension ManagerProtocol {

}
protocol DriverProtocol {
    func startDriving()
}
protocol TaxiProtocol {
    func select()
    
}
class TaxiManager: ManagerProtocol {
    func findTaxi() {
        var taxi: [TaxiProtocol] = []
        var uber:Uber = Uber.init()
        uber.price = 25
        uber.driverDelegate = Driver.init(name: "A", rating: 8.1, experience: 6)
        taxi.append(uber)
        
        var choosentaxi: TaxiProtocol = self.findTaxi(by: TaxiOrder.price, allNearbyTaxies: taxi)
        choosentaxi.select()
    }
    
    private func findTaxi(by: TaxiOrder, allNearbyTaxies: [TaxiProtocol] ) -> TaxiProtocol {
        
        
        if by == TaxiOrder.price {
            
        }
        else if by == TaxiOrder.rating {
            
        }
        else if by == TaxiOrder.distance {
            
        }
        else {
           
            
        }
         return Taxi()
    }
    
}
class Taxi : TaxiProtocol {
    
    var driverDelegate: DriverProtocol?
    func select() {
        self.driverDelegate?.startDriving()
        print(driverDelegate)
    }
    
    
    
}
class HumanForTaxi {
    var delegate : ManagerProtocol?
    
}
class Uber: Taxi {
    var price : Float?
}


class OnTaxi: Taxi {
    var distance : Float?
}
class Driver : DriverProtocol {
    func startDriving() {
        print("\(name)")
        print("\(rating)")
        print("\(experience)")
    }
    
    var name: String
    var rating: Float
    var experience: Int
    
    init(name: String , rating: Float , experience: Int) {
        self.name = name
        self.experience = experience
        self.rating = rating
        
    }
}
enum TaxiOrder {
    case price
    case distance
    case rating
}


