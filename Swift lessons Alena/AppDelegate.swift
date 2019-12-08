//
//  AppDelegate.swift
//  Swift lessons Alena
//
//  Created by Anton Klysa on 25.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let block: TestClassForBlocks = TestClassForBlocks.init()
        block.testFunc()
        
        
        /* lesson6
         let func1: Functions = Functions.init(parameter: "hsldfhsldkfhsld")
         let nBool: Bool = func1.ggggg55(value123: "23423")
         let func2: Functions = Functions.createObject()
         let _ = func2.ggggg55(value123: "gdfg")
         
         var array: [Functions]? //0x000000
         array?.append(func1)
         array?.append(func2)
         var fsf =  String.tt() //"33333"
         var sdfdf: String = fsf.changeSelf()
         
         var ddd: String = (func1.funcWithParamsAndReturn(a: "4777", b: 45, c: 45.2))!
         var something: String? = ddd.changeSelf()
         */
        
        /* lesson 5
         
         let washingMachine: WashingMachine = WashingMachine.init()
         
         let dishWashingMachine: DishWashingMachine = DishWashingMachine.init()
         
         let human144: Human = Human()
         human144.washDelegate = dishWashingMachine
         human144.washingInTheEndOfWeek()
         
         */
        
        /* lesson 4
         
         let pants: Jeans = Jeans.init(color: .red, pocket: nil)
         let jeans: Jeans = Jeans.init(color: .black, pocket: ["nail": 33, "snickers": 1, "pants": pants]) //pants можно добавить как переменную pants так и напрямую созданием обьекта Jeans.init(color: .red, pocket: nil)
         
         jeans.wash(keyForRemoving: "snickers")
         wash(something: jeans, keyForRemoving: "snickers")
         
         */
        
        
        /*  lesson 2
         
         let car123: Car = Car.init(selectColor: .red, selectWheelsCount: 2)
         car123.drive()
         car123.driveWithParameters(kilometersPerHour: nil, test123: nil, test323: 123444)
         
         let returnedValue: Car = car123.changeYourself()
         
         let returnedValue2: Int? = car123.driveWithParametersAndReturn(kilometersPerHour: 55)
         
         
         let mersedes = Mersedes.init(selectColor: .red, selectWheelsCount: 3)
         mersedes.drive()
         
         
         let benz = Benz(selectColor: .black, selectWheelsCount: 2)
         benz.drive()
         
         */
        
        /* homework lesson 2
         
         let human1:Human = Human.init(name: " alena", surname: "Klysa", age: 26.5, weight: 59.1, height: 165.4) //ининциализация метода и создание обЬекта
         human1.showInfo()//вызов метода
         
         let man1 = Man.init(name: "Tuchka", surname: "Tirex", age: 15.3, weight: 65, height: 170, power: 23)
         man1.hello()
         
         man1.showInfo()//вызов метода
         let woman1 = Woman.init(name: "fff", surname: "fff", age: 89, weight: 98, height: 99)
         woman1.cook(food: "gh")//вызов метода
         woman1.showInfo()//вызов метода
         */
        
        return true
    }
    
    
    /* lesson 4
     
     func wash(something: AnyObject, keyForRemoving: String) {
     
     let test1 = keyForRemoving
     let tetst8888 = test1
     let fffff = tetst8888
     
     if let jeansfsnldkfsldk = something as? Jeans {
     //do something with jeans
     print(jeansfsnldkfsldk)
     
     //            if jeansfsnldkfsldk.pocket == nil {
     //                //проверка если нет карманов
     //            }
     //
     //            if jeansfsnldkfsldk.pocket != nil {
     //                //проверка если есть карманы
     //            }
     
     if jeansfsnldkfsldk.pocket != nil {
     
     print(jeansfsnldkfsldk.pocket!)
     print(jeansfsnldkfsldk.pocket!.keys)
     print(jeansfsnldkfsldk.pocket!.values)
     
     var tempJeansPocketCopy = jeansfsnldkfsldk.pocket
     
     tempJeansPocketCopy!.enumerated().forEach({ (index, arg) in
     let key: String = arg.key
     let value: Any = arg.value
     
     //первый вариант
     if key == fffff {
     jeansfsnldkfsldk.pocket?.removeValue(forKey: key)
     }
     })
     }
     }
     }
     
     */

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

