//
//  HW.swift
//  Swift lessons Alena
//
//  Created by Alena Klysa on 12/8/19.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit

class CaclViewControler: UIViewController {
    // MARK props
    
    
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
    
    
    @IBAction func oneButtonAction(sender: UIButton) {
      getResult.text = ( getResult.text ?? String()) + "1"
      }
      @IBAction func twoButtonAction(sender: UIButton) {
           getResult.text = ( getResult.text ?? String()) + "2"
    }
    @IBAction func threeButtonAction(sender: UIButton) {
        getResult.text = ( getResult.text ?? String()) + "3"
    }
    @IBAction func fourButtonAction(sender: UIButton) {
      getResult.text = ( getResult.text ?? String()) + "4"
    }
    @IBAction func fiveButtonAction(sender: UIButton) {
        getResult.text = ( getResult.text ?? String()) + "5"
    }
    @IBAction func sixButtonAction(sender: UIButton) {
         getResult.text = ( getResult.text ?? String()) + "6"
    }
    @IBAction func sevenButtonAction(sender: UIButton) {
      getResult.text = ( getResult.text ?? String()) + "7"
        
    }
    @IBAction func eightButtonAction(sender: UIButton) {
       getResult.text = ( getResult.text ?? String()) + "8"
    }
    @IBAction func nineButtonAction(sender: UIButton) {
         getResult.text = (getResult.text ?? String()) + "9"
    }
    
    @IBAction func getResultButtonAction(sender: UIButton) {
        let calc1 = getResult.text!
        let getResult: Float = Float (calc1)!
        let plus: Float = getResult  
        
        
    }
    func selectButton(sender: UIButton) {
    
        sender.isSelected = !sender.isSelected
        
    }
    
}
