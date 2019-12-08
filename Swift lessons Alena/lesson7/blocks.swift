//
//  blocks.swift
//  Lessons swift
//
//  Created by Anton Klysa on 23.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit


class TestClassForBlocks {
    
    var blockProperty: ( (Float, Float)->() )?
    
    func testFunc() {
        
               //->                 //<-
        //SERVER                //DEVICE
        print("START")
        let x: Int = 0

        let block1: ((String, String)->(Int)) = { (value1, value2) -> Int in
            print("HELLO")
            
            print(value1)
            print(value2)
            return 123
        }
        
        print(block1)
        
        let integer: Int = block1("fdfd", "asdasd")
        
        let array: [String] = []
        
        funcWithBlockParam(block44: { (stringFromBlock, floatFromBlock, ourSuperTest) -> SuperTest in
            print("HELLO BLOcK")
            ourSuperTest.name = stringFromBlock
            ourSuperTest.height = floatFromBlock
            return ourSuperTest
        })
        
        
        print("123")
    }
    
    func funcWithBlockParam(block44: @escaping ((String, Float, SuperTest) -> SuperTest)) {
        
        let superTest: SuperTest = SuperTest.init()
        superTest.name = "default name"
        superTest.height = nil
        
        var seconds: Int = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
           
            seconds = seconds + 1
            print("SECONDS = \(seconds)")
            if seconds == 30 {
                timer.invalidate()
                let NEWSuperTest: SuperTest = block44("NEW NAME", 123.4, superTest)
            }
        }
    }
}


class SuperTest {
    
    var name: String?
    var height: Float?
}
