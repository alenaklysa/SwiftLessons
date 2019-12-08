//
//  Dress.swift
//  Lessons swift
//
//  Created by Anton Klysa on 10.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit


class Jeans: NSObject {
    
    //MARK: properties
    
    var pocket: [String: Any]?
    var color: UIColor
    
    
    //MARK: init
    
    init(color: UIColor, pocket: [String: Any]?) {
        self.color = color
        self.pocket = pocket
    }
    
    //MARK: FUNC
    
    func wash(keyForRemoving: String) {
        
        if self.pocket != nil {
            
            var tempJeansPocketCopy = self.pocket
            
            tempJeansPocketCopy!.enumerated().forEach({ (index, arg) in
                let key: String = arg.key
                let value: Any = arg.value
                
                //первый вариант
                if key == keyForRemoving {
                    self.pocket?.removeValue(forKey: key)
                }
            })
        }
    }
}

class Shorts: Jeans {
    
}
