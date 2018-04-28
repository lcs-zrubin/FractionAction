//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var validNumerator = 0
var validDenominator = 0
var GCF = 0

// INPUT
// Collect and filter user input here

while(true) {
    print("Numerator?")
    guard let rawNumeratorInput = readLine() else {
        continue
    }
    guard let numeratorInput = Int(rawNumeratorInput) else {
        continue
    }
    if numeratorInput < 1 {
        continue
    }
    validNumerator = numeratorInput
    
    print("Denominator?")
    guard let rawDenominatorInput = readLine() else {
        continue
    }
    guard let denominatorInput = Int(rawDenominatorInput) else {
        continue
    }
    if denominatorInput < 1 {
        continue
    }
    validDenominator = denominatorInput
    
    break
}

// PROCESS
// Implement the primary logic of the problem here





//gcf finding thing

var a = 0
var b = 0
var substitute = 0

    //thanks mr euclid

if validNumerator >= validNumerator {
    a = validNumerator
    b = validDenominator
} else {
    a = validDenominator
    b = validNumerator
}

while b != 0 {
    substitute = a % b
    a = b
    b = substitute
}
print("The GCF is \(a)")

                    //var a = 270
                    //var b = 192
                    //
                    //while b != 0 {
                    //    substitute = a % b
                    //    a = b
                    //    b = substitute
                    //}
                    //print("The GCF is \(a)")

// OUTPUT
// Report results to the user here
print("Your fraction is \(validNumerator/validDenominator) \((validNumerator%validDenominator)/a)/\((validDenominator)/a)")
