//
//  PTNumeralSpec.swift
//  RomanSwiftKata
//
//  Created by Alex Ogorek on 3/29/16.
//  Copyright © 2016 pillarKata. All rights reserved.
//

@testable import RomanSwiftKata

import XCTest
import Quick
import Nimble

class PTNumeralSpec: QuickSpec {
    override func spec() {
        
        describe("PTNumeral") {
            let numeral = PTNumeral()
            
            context("when numeral entered", {
                it("should return 1 when I entered") {
                    let arabic = numeral.getArabicForNumeral("I")
                    expect(arabic).to(equal(1))
                }
                
                it("should return 2 when II entered") {
                    let arabic = numeral.getArabicForNumeral("II")
                    expect(arabic).to(equal(2))
                }
                
                it("should return 3 when III entered") {
                    let arabic = numeral.getArabicForNumeral("III")
                    expect(arabic).to(equal(3))
                }
                
                it("should return 4 when IV entered") {
                    let arabic = numeral.getArabicForNumeral("IV")
                    expect(arabic).to(equal(4))
                }
                
                it("should return 5 when V entered") {
                    let arabic = numeral.getArabicForNumeral("V")
                    expect(arabic).to(equal(5))
                }
                
                it("should return 9 when IX entered") {
                    let arabic = numeral.getArabicForNumeral("IX")
                    expect(arabic).to(equal(9))
                }
                
                it("should return 10 when X entered") {
                    let arabic = numeral.getArabicForNumeral("X")
                    expect(arabic).to(equal(10))
                }
                
                it("should return 100 when C entered") {
                    let arabic = numeral.getArabicForNumeral("C")
                    expect(arabic).to(equal(100))
                }
                
                it("should return 1499 when MCDXCIX entered") {
                    let arabic = numeral.getArabicForNumeral("MCDXCIX")
                    expect(arabic).to(equal(1499))
                }
                
                it("should return 44 when XLIV entered") {
                    let arabic = numeral.getArabicForNumeral("XLIV")
                    expect(arabic).to(equal(44))
                }
                
                it("should return 996 when CMXCVI entered") {
                    let arabic = numeral.getArabicForNumeral("CMXCVI")
                    expect(arabic).to(equal(996))
                }
            })
            
            context("when arabic enterd", { 
                it("should return I when 1 entered") {
                    let roman = numeral.getRomanForArabic(1)
                    expect(roman).to(equal("I"))
                }
                
                it("should return II when 2 entered") {
                    let roman = numeral.getRomanForArabic(2)
                    expect(roman).to(equal("II"))
                }
                
                it("should return III when 3 entered") {
                    let roman = numeral.getRomanForArabic(3)
                    expect(roman).to(equal("III"))
                }
                
                it("should return IV when 4 entered") {
                    let roman = numeral.getRomanForArabic(4)
                    expect(roman).to(equal("IV"))
                }
                
                it("should return V when 5 entered") {
                    let roman = numeral.getRomanForArabic(5)
                    expect(roman).to(equal("V"))
                }
            })
        }
        
    }
}
