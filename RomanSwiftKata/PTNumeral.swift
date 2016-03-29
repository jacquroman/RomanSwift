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
        
        let characterMap: [Character: Int] = ["I" : 1,
                                              "V" : 5,
                                              "X" : 10,
                                              "L" : 50,
                                              "C" : 100,
                                              "D" : 500,
                                              "M" : 1000]
        
        var arabicValue = 0
        for index in numeral.characters.indices {
            let char = numeral[index]
            var valueOfCurrentChar = characterMap[char]
            if valueOfCurrentChar == nil {
                valueOfCurrentChar = 0
            }
            
            
            let nextIndex = index.successor()
            var nextChar: Character?
            if nextIndex != numeral.endIndex {
                nextChar = numeral[nextIndex]
            }
            
            var valueOfNextChar: Int?
            if nextChar != nil {
                valueOfNextChar = characterMap[nextChar!]
            }
            
            
            if (valueOfNextChar > valueOfCurrentChar) {
                arabicValue -= valueOfCurrentChar!
            }
            else {
                arabicValue += valueOfCurrentChar!
            }
        }
        
        return arabicValue
    }
    
    func getRomanForArabic(arabicArg: Int) -> String {
        
        let arabicValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let arabicRomans = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        
        var arabic = arabicArg
        var roman = ""
        
        while arabic > 0 {
            for value in arabicValues {
                if arabic >= value {
                    arabic -= value
                    roman += arabicRomans[arabicValues.indexOf(value)!]
                    break
                }
            }
        }
        return roman
    }
}