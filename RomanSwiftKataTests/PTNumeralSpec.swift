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
            context("when numeral entered", { 
                it("returns 1 when I entered") {
                    let numeral = PTNumeral()
                    let arabic = numeral.getArabicForNumeral("I")
                    expect(arabic).to(equal(1))
                }
                
                it("return 2 when II entered") {
                    let numeral = PTNumeral()
                    let arabic = numeral.getArabicForNumeral("II")
                    expect(arabic).to(equal(2))
                }
            })
        }
        
    }
}
