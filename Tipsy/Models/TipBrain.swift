//
//  TipBrain.swift
//  Tipsy
//
//  Created by Jorge Gonzalez on 11/04/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct TipBrain {
    var tipResult: TipResult?
    
    mutating func calculate(numberOfPeople: Int, billTotal: Float,
                   tipPercentage: Float) {
        let billAndTip = billTotal + (billTotal * tipPercentage)
        let result = billAndTip / Float(numberOfPeople)
        tipResult = TipResult(result: result, numberOfPeople: numberOfPeople,
                              tipPercentage: tipPercentage)
    }
    
    func getNumberOfPeople() -> Int {
        return tipResult?.numberOfPeople ?? 0
    }
    
    func getTipPercentage() -> Int {
        let tipPercentage = (tipResult?.tipPercentage ?? 0) * 100
        return Int(tipPercentage)
    }
    
    func getResult() -> String {
        let result = tipResult?.result ?? 0
        return String(format: "%.2f", result)
    }
        
}
