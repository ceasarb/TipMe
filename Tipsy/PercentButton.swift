//
//  PercentButton.swift
//  Tipsy
//
//  Created by Ceasar Barbosa on 7/31/16.
//  Copyright © 2016 Ceasar Barbosa. All rights reserved.
//

import UIKit

class PercentButton: UIButton {
    
    override func awakeFromNib() {
        let moneyGreenColor = UIColor(colorLiteralRed: 29/255,
                                      green: 191/255,
                                      blue: 120/255,
                                      alpha: 1.0)
        self.layer.borderColor = moneyGreenColor.cgColor
        self.layer.borderWidth = 1.0
    }
    

}
