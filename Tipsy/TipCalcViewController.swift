//
//  TipCalcViewController.swift
//  Tipsy
//
//  Created by Ceasar Barbosa on 7/29/16.
//  Copyright © 2016 Ceasar Barbosa. All rights reserved.
//

import UIKit

class TipCalcViewController: UIViewController {
    
    
    // MARK: - @IBOutlets
    @IBOutlet weak var enterAmountTextField: UITextField!
    @IBOutlet weak var enterNumberOfPeopleTextField: UITextField!
    @IBOutlet weak var splitAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    // MARK: - Properties
    var tipCalc = TipCalc(billAmount: 0.0, tipPercentage: 0.0)


    // MARK: - Initialized Views
    override func viewDidLoad() {
        super.viewDidLoad()
      

        configureTextFields()
        
    }
    
    // MARK: - @IBActions
    @IBAction func billAmountChanged(sender: AnyObject) {
        calcTip()
        
    }
    @IBAction func numberOfPeopleChanged(_ sender: UITextField) {
        calcSplit()
    }
    
    @IBAction func onTipPercentTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            tipCalc.tipPercentage = 0.1
            calcTip()
            calcSplit()
        } else if sender.tag == 2 {
            tipCalc.tipPercentage = 0.15
            calcTip()
            calcSplit()
        } else if sender.tag == 3 {
            tipCalc.tipPercentage = 0.2
            calcTip()
            calcSplit()
        } else if sender.tag == 4 {
            tipCalc.tipPercentage = 0.25
            calcTip()
            calcSplit()
        } else if sender.tag  == 5 {
            tipCalc.tipPercentage = 0.3
            calcTip()
            calcSplit()
        }
        
    }
    
    
    func calcTip() {
        tipCalc.billAmount = (enterAmountTextField.text! as NSString).doubleValue
        tipCalc.calculateTip()
        updateUI()
    }
    
    func calcSplit() {
        tipCalc.numberOfPeople = (enterNumberOfPeopleTextField.text! as NSString).doubleValue
        tipCalc.calcSplit()
        updateUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        enterAmountTextField.resignFirstResponder()
        enterNumberOfPeopleTextField.resignFirstResponder()
    }
    
    
    func updateUI() {
        tipAmountLabel.text = String(format: "$%0.2f", tipCalc.tipAmount)
        totalAmountLabel.text = String(format: "$%0.2f", tipCalc.total)
        
        if enterNumberOfPeopleTextField.text == "" || enterAmountTextField.text == "" {
            splitAmountLabel.text = "$0.00"
        } else {
            splitAmountLabel.text = String(format: "$%0.2f", tipCalc.splitTotal)
        }
        

    }
    
    func configureTextFields() {
        enterAmountTextField.layer.cornerRadius = 10.0
        enterAmountTextField.clipsToBounds = true
        enterNumberOfPeopleTextField.layer.cornerRadius = 10.0
        enterNumberOfPeopleTextField.clipsToBounds = true
    }
    
    
    
}
