//
//  functions.swift
//  Lessons swift
//
//  Created by Anton Klysa on 20.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation


class Functions {
    
    var helloWorld: String
    
    
    init(parameter: String) {
        self.helloWorld = parameter
    }
    
    init(fsd: String) {
        self.helloWorld = fsd
    }
    
    //MARK: типы функций
    
    private func justFunc() { // func begin
     
    } //end of func
    
    func funcWithParams(a: String, b: Int) {
        let something = ffff(aBool: helloworld())
    }
    
    func funcWithParamsAndReturn(a: String, b: Int, c: Float) -> String? {
        print(a)
        print(b)
        print(c)
        let string: String = "string"
        return a
    }
    
    func justReturn() -> String {
        return "string"
    }
    
    
    //MARK: играемся с функциями
    

    func helloworld() -> Bool {
        return true
    }
    
    func test123(anyInt: Int) -> String {
        
        return "\(anyInt)"
    }
    
    func ggggg55(value123: String) -> Bool {
        //value123 = "35"
        let NEWSTRING = value123
        let x = 2
        let y = 5
        var z: Bool
        if x - y > 0 {
            z = true
        } else {
            z = false
        }
        
        helloWorld = "666"
        
        return  helloworld()
    }
    
    func ffff(aBool: Bool) -> Bool {
        //aBool = true
        
        let string = test123(anyInt: 35)
        
        let bool = ggggg55(value123: string)
        
        let sdf: Functions = Functions.createObject() //sdf = 0x00034553
        sdf.helloWorld = "123"
        
        Functions.createObject().helloWorld = "123" //_ = 0x3274723464
        
        let newnewnew: Functions = Functions.createObject() //newnewnew = 0x26387287434
        
        let newString: String = newnewnew.helloWorld//Functions.createObject().helloWorld //"hello"
        
        return bool //ggggg55(value123: test123(anyInt: 35)) //true
    }
    
    
    
    //MARK: статические функции (функции класса)
    
    static func createObject() -> Functions {
        
        
        return Functions.init(parameter: "hello")
    }
}


