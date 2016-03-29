//
//  PTNumeral.swift
//  RomanSwiftKata
//
//  Created by Alex Ogorek on 3/29/16.
//  Copyright © 2016 pillarKata. All rights reserved.
//

import Foundation

class PTNumeral {
    func getArabicForNumeral(numeral: String) -> Int {
        
        var arabicValue = 0
        for char in numeral.characters {
            if char == "I" {
                arabicValue += 1
            }
            else if char == "V" {
                arabicValue += 5
            }
        }
        return arabicValue
        
        /*
        if numeral == "II" {
            return 2
        }
        else if numeral == "III" {
            return 3
        }
        else if numeral == "V" {
            return 5
        }
        
        return 1
        */
    }
}