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
            })
        }
        
    }
}
