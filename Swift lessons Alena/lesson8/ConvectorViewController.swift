//
//  ConvectorViewController.swift
//  Swift lessons Alena
//
//  Created by Anton Klysa on 25.11.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit


// class NAME : PARENT, PROTOCOL1, PROTOCOL2 ... {

//}

class ConvectorViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //MARK: constants
    
    static let rowHeight: CGFloat = 70
    
    var pickerView: UIPickerView?
    
    
    //MARK: props
    
    var inputCurrency: Currency?
    var outputCurrency: Currency?
    
    private var allCurrency: [Currency] = [Currency.init(currency: CurrencyList.euro), Currency.init(currency: CurrencyList.uah), Currency.init(currency: CurrencyList.usd), Currency.init(currency: CurrencyList.lir)]
    
    //MARK: IBOutlets
    
    @IBOutlet weak var fromButton: UIButton!
    @IBOutlet weak var toButton: UIButton!
    @IBOutlet weak var getResultButton: UIButton!
    @IBOutlet weak var fromTextField: UITextField!
    @IBOutlet weak var toTextField: UITextField!

    
    //MARK: lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fromTextField.delegate = self
        toTextField.delegate = self
        
        fromTextField.keyboardType = UIKeyboardType.numberPad
        toTextField.keyboardType = UIKeyboardType.numberPad
        
        if pickerView == nil {
            pickerView = UIPickerView.init()
            pickerView!.delegate = self
            pickerView!.dataSource = self
            pickerView!.backgroundColor = UIColor.black.withAlphaComponent(0.7)
            
            self.view.addSubview(pickerView!)
            pickerView?.isHidden = true
            pickerView!.translatesAutoresizingMaskIntoConstraints = false
            pickerView!.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
            pickerView!.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
            pickerView!.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            pickerView!.heightAnchor.constraint(equalToConstant: 230).isActive = true
        }
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//    }
    
    
    //MARK: layout
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//    }
    
    
    private func selectButton(sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
        pickerView!.isHidden = !pickerView!.isHidden
    }
    
    
    //MARK: IBAction
    @IBAction func oneButtonAction(sender: UIButton) {
        print("FROM BUTTON WAS SELECTED")
        fromTextField.text = (fromTextField.text ?? String()) + "1"
    }
    @IBAction func twoButtonAction(sender: UIButton) {
        print("FROM BUTTON WAS SELECTED")
        fromTextField.text = (fromTextField.text ?? String()) + "2"
    }
    
    @IBAction func fromButtonAction(sender: UIButton) {
        print("FROM BUTTON WAS SELECTED")
        selectButton(sender: sender)
    }
    
    @IBAction func toButtonAction(sender: UIButton) {
        print("TO BUTTON WAS SELECTED")
        selectButton(sender: sender)
    }
    
    @IBAction func getResultButtonAction(sender: UIButton) {
        print("GET RESULTS BUTTON WAS SELECTED")
        
        var rate: Float = 1
        
        if let inputCurrency = inputCurrency, let outputCurrency = outputCurrency  {
            switch inputCurrency.currency {
            case .uah:
                rate = outputCurrency.rate.uahRate
            case .usd:
                rate = outputCurrency.rate.usdRate
            case .euro:
                rate = outputCurrency.rate.euroRate
            case .lir:
                rate = outputCurrency.rate.lirRate
            default:
                break
            }
        }
        
        let string = fromTextField.text!
        let textFieldText: Float =  Float(string)!
        let summ: Float = textFieldText / rate
        fromTextField.endEditing(true)
        toTextField.endEditing(true)
        toTextField.text = "\(summ)"
    }
    
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    
    //MARK: UIPickerViewDelegate
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let rowView: UIView = UIView.init()
        
        let currency: Currency = allCurrency[row]
        
        let rowLabel: UILabel = UILabel.init(frame: CGRect.zero)
        rowLabel.text = currency.name
        rowLabel.textAlignment = NSTextAlignment.center
        rowLabel.textColor = UIColor.white
        rowLabel.backgroundColor = .black
        
        rowView.addSubview(rowLabel)
        
        rowLabel.translatesAutoresizingMaskIntoConstraints = false
        rowLabel.leadingAnchor.constraint(equalTo: rowView.leadingAnchor, constant: 0).isActive = true
        rowLabel.trailingAnchor.constraint(equalTo: rowView.trailingAnchor, constant: 0).isActive = true
        rowLabel.bottomAnchor.constraint(equalTo: rowView.bottomAnchor).isActive = true
        rowLabel.topAnchor.constraint(equalTo: rowView.topAnchor).isActive = true
    
        return rowView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return ConvectorViewController.rowHeight
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let currency: Currency = allCurrency[row]
        
        if fromButton.isSelected {
            fromButton.setTitle(currency.name, for: .normal)
            inputCurrency = currency
            fromButtonAction(sender: fromButton)
        } else if toButton.isSelected {
            toButton.setTitle(currency.name, for: .normal)
            outputCurrency = currency
            toButtonAction(sender: toButton)
        }
    }
    
    
    //MARK: UIPickerViewDataSource
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allCurrency.count
    }
}
