//
//  HW.swift
//  Swift lessons Alena
//
//  Created by Alena Klysa on 12/8/19.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit

enum mark : String {
    case plus = "+"
     case minus = "-"
     case multipl = "*"
     case division = "/"
}
class CaclViewControler: UIViewController {
    // MARK props
    var num1 : Float! = 0
    var calc : Float! = 0
    
    // MARK IBOutlet
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var getResultButton: UIButton!
    @IBOutlet weak var getResult: UITextField!

    
    
    // MARK IBAction
    
    @IBAction func zeroButtonAction(sender: UIButton) {
         getResult.text = ( getResult.text ?? String()) + "0"
           num1 = Float (getResult.text!)
           
       }
    @IBAction func oneButtonAction(sender: UIButton) {
      getResult.text = ( getResult.text ?? String()) + "1"
        num1 = Float (getResult.text!)
        
    }
      @IBAction func twoButtonAction(sender: UIButton) {
           getResult.text = ( getResult.text ?? String()) + "2"
        num1 = Float (getResult.text!)
    }
    @IBAction func threeButtonAction(sender: UIButton) {
        getResult.text = ( getResult.text ?? String()) + "3"
     num1 = Float (getResult.text!)
    }
    @IBAction func fourButtonAction(sender: UIButton) {
      getResult.text = ( getResult.text ?? String()) + "4"
    num1 = Float (getResult.text!)
    }
    @IBAction func fiveButtonAction(sender: UIButton) {
        getResult.text = ( getResult.text ?? String()) + "5"
        num1 = Float (getResult.text!)
    }
    @IBAction func sixButtonAction(sender: UIButton) {
         getResult.text = ( getResult.text ?? String()) + "6"
         num1 = Float (getResult.text!)
    }
    @IBAction func sevenButtonAction(sender: UIButton) {
      getResult.text = ( getResult.text ?? String()) + "7"
        num1 = Float (getResult.text!)
        
    }
    @IBAction func eightButtonAction(sender: UIButton) {
       getResult.text = ( getResult.text ?? String()) + "8"
        num1 = Float (getResult.text!)
    }
    @IBAction func nineButtonAction(sender: UIButton) {
         getResult.text = (getResult.text ?? String()) + "9"
         num1 = Float (getResult.text!)
    }
    
    @IBAction func getResultButtonAction(sender: UIButton) {
       calc = Float (getResult.text!)!
        if sender.tag != 5{
            if sender.tag == 1 {
            getResult.text =  "+" +
           
                
        }
        else if sender.tag == 2
         {
            getResult.text =  (getResult.text ?? String()) + "-"
           
        }
        else if sender.tag == 3
         {
            getResult.text = (getResult.text ?? String()) +  "*"
            
        }
        else if sender.tag == 4
         {
            getResult.text =  (getResult.text ?? String()) + "/"
           
            }}
       
         else if sender.tag == 5 {
            
            if sender.tag == 1 {
                getResult.text = String (num1 + calc )
            }
            else if sender.tag == 2 {
                getResult.text =  String (num1 - calc )
            }
            else if sender.tag == 3 {
                getResult.text =  String (num1 * calc )
            }
            else if sender.tag == 4 {
                getResult.text =  String (num1 / calc )
            }
        }
    }
        
    
    
}


    

