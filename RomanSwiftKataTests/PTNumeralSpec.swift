//
//  PTNumeralSpec.swift
//  RomanSwiftKata
//
//  Created by Alex Ogorek on 3/29/16.
//  Copyright © 2016 pillarKata. All rights reserved.
//

import XCTest
import Quick
import Nimble

class PTNumeralSpec: QuickSpec {
    override func spec() {
        
        describe("PTNumeral") {
            context("when numeral entered", { 
                it("returns 1 when I entered") {
                    let numeral = PTNumeral()
                    let arabic = numeral.getArabicFromNumeral("I")
                    expect(arabic).to(equal(1))
                }
            })
        }
        
    }
}
