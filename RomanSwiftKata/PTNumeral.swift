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
                                              "C" : 100]
        
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
}