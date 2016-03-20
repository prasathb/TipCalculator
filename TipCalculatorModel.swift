//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Prasath Balakrishnan on 1/20/16.
//  Copyright © 2016 Prasath Balakrishnan. All rights reserved.
//

import Foundation

class TipCalculatorModel{
    
    var total: Double // total amount
    var taxPct:Double // tax percentage
    var subTotal: Double{
        get{
            return total * (taxPct+1); // subTotal
        }
        set(newSubTotal){
            //...
        }
    }
    
    // initializer.
    init (total: Double, taxPct:Double)
    {
        self.total = total;
        self.taxPct = taxPct;
    }
    
    /**
     calcTipWithTipPct(tipPct)
     @returns retVal type Double
     
     */
    func calcTipWithTipPct(tipPct:Double) -> Double{
        return subTotal * tipPct;
    }
    
    func returnPossibleTips() -> [Int: Double]{
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        var retVal = [Int: Double]()
        
        for possibleTip in possibleTipsInferred{
            
            let intPct = Int(possibleTip*100)
            print (intPct);
            
            retVal[intPct] = calcTipWithTipPct(possibleTip);
        }
        
        return retVal;
    }
    
}
