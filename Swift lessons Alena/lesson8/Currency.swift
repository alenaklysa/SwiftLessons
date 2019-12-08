//
//  convector.swift
//  Swift lessons Alena
//
//  Created by Anton Klysa on 25.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation


enum CurrencyList: String {
    case usd = "USD"
    case euro = "EURO"
    case uah = "UAH"
    case lir = "LIR"
}


class Rate {
    var usdRate: Float!
    var uahRate: Float!
    var euroRate: Float!
    var lirRate: Float!
}

class Currency {
    
    //MARK: props
    
    var name: String
    var currency: CurrencyList
    var rate: Rate

    
    //MARK: init
    
    init(currency: CurrencyList) {

        self.currency = currency
        self.name = currency.rawValue
        self.rate = Rate()
        
        switch currency {
        case .uah:
            rate.uahRate = 1
            rate.euroRate = 1/30
            rate.lirRate = 1/5
            rate.usdRate = 1/25
            break
        case .usd:
            rate.usdRate = 1
            rate.uahRate = 25
            rate.lirRate = 5
            rate.euroRate = 0.8
            break
        case .euro:
            rate.euroRate = 1
            rate.uahRate = 30
            rate.lirRate = 6
            rate.usdRate = 1.2
            break
        case .lir:
            rate.lirRate = 1
            rate.uahRate = 5
            rate.usdRate = 1/5
            rate.euroRate = 1/6
            break
        default:
            break
        }
    }
}
