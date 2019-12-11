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
    var firstArgument : Float! = 0
    var secondArgument : Float! = 0
    var selectedOperator: UIButton?
    
    // MARK IBOutlet
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    
    @IBOutlet weak var getResultButton: UIButton!
    @IBOutlet weak var getResultTextField: UITextField!

    @IBOutlet var operatorsArray: [UIButton]!
    
    
    // MARK IBAction
    
    @IBAction func numberAction(sender: UIButton) {
        if selectedOperator != nil {
           getResultTextField.text = String()
            for item in operatorsArray {
                item.backgroundColor = .white
            }
            selectedOperator = nil
        }
        getResultTextField.text = ( getResultTextField.text ?? String()) + sender.currentTitle!
        firstArgument = Float (getResultTextField.text!) //11    //22
    }
    
    @IBAction func getResultButtonAction(sender: UIButton) {
        
        for item in operatorsArray {
            item.backgroundColor = .white
        }
        
        sender.backgroundColor = .red
        
        selectedOperator = sender
        
        switch sender.tag {
        case 1:
            secondArgument = firstArgument + secondArgument //11
        case 2:
            secondArgument = firstArgument - secondArgument
        case 3:
            secondArgument = firstArgument * secondArgument //144
        case 4:
            secondArgument = firstArgument / secondArgument
        default:
            break
        }
        
        getResultTextField.text = "\(secondArgument!)" //11 //144

        return
    }
        
    
    
}


    

