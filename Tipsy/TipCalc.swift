//
//  TipCalc.swift
//  Tipsy
//
//  Created by Ceasar Barbosa on 7/29/16.
//  Copyright © 2016 Ceasar Barbosa. All rights reserved.
//

import Foundation
import UIKit

class TipCalc {
    
    
    private var _billAmount = 0.0
    private var _tipPercentage = 0.0
    private var _tipAmount = 0.0
    private var _total = 0.0
    private var _numberOfPeople = 0.0
    private var _splitTotal = 0.0
    
    var billAmount: Double {
        get {
          return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercentage: Double {
        get {
            return _tipPercentage
        } set {
            _tipPercentage = newValue
        }
    }
    
    var tipAmount: Double {
        get {
            return _tipAmount
        }
    }
    
    var total: Double {
        get {
            return _total
        }
    }
    
    var numberOfPeople: Double {
        get {
            return _numberOfPeople
        } set {
            _numberOfPeople = newValue
        }
    }
    
    var splitTotal: Double {
        get {
            return _splitTotal
        }
    }
    
    init(billAmount: Double, tipPercentage: Double) {
        self._billAmount = billAmount
        self._tipPercentage = tipPercentage
    }
    
    func calculateTip() {
        _tipAmount = _billAmount * _tipPercentage
        _total = _tipAmount + billAmount
    }
    
    func calcSplit() {
        _splitTotal = _total / _numberOfPeople
    }
    
    
}
