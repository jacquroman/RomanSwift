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
        var arabic = arabicArg
        
        var roman = ""
        
        while arabic > 0 {
            if arabic >= 5 {
                arabic -= 5
                roman += "V"
            }
            else if arabic >= 4 {
                arabic -= 4
                roman += "IV"
            }
            else if arabic >= 1 {
                arabic -= 1
                roman += "I"
            }
        }
        return roman
    }
}