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
    if numeratorInput < 0 {
        print("Numerator cannot be negative!")
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
        print("Denominator cannot be zero or negative!")
        continue
    }
    validDenominator = denominatorInput
    break
}

// PROCESS
// Implement the primary logic of the problem here

let remainder = validNumerator % validDenominator
let quotient = validNumerator / validDenominator

if remainder == 0 {
    print("Your whole number is \(quotient)")
}  else {
    
    // We might have to reduce
    //Loop backwards from the halfway point of the numerator
    //e.g. 3 8/12
    //      Loop backwards from the halfway point of 8
    //      4,3,2
    
    var GCF = -1 //temp value
    for i in stride(from: remainder/2, through: 2, by: -1){
     
        //When the countervairable (i) evenly divides into both the remainder
        //and the original denominator... we have the GCF
        //e.g: 8 % 4 == 0   12 % 4 == 0
    
        if remainder % i == 0 && validDenominator % 1 == 0 {
            
            //now we know that "i" is the GCF
            GCF = i
            break //stop the loop now that we have a match
        }
        
    }
    print(GCF)
    
    //Print the reduced fraction
    print("\(quotient) \(remainder / GCF)/\(validDenominator / GCF)")
}




//else if remainder > 0 {
//    print("Your mixed number is \(quotient) \(remainder)/\(validDenominator)")
//}
//print("\(quotient/validDenominator)")


//gcf finding thing

//var a = 0
//var b = 0
//var substitute = 0
//
////thanks mr euclid
//
//if validNumerator >= validNumerator {
//    a = validNumerator
//    b = validDenominator
//} else {
//    a = validDenominator
//    b = validNumerator
//}
//
//while b != 0 {
//    substitute = a % b
//    a = b
//    b = substitute
//}
//print("The GCF is \(a)")
//
//
//
//// OUTPUT
//// Report results to the user here
//
//if validNumerator/validDenominator > 0 && validNumerator%validDenominator/a > 0 {
//    print("Your mixed fraction is \(validNumerator/validDenominator) \((validNumerator%validDenominator)/a)/\((validDenominator)/a)")
//}
//else if validNumerator%validDenominator/a > 0 {
//    print("Your fraction is \((validNumerator%validDenominator)/a)/\((validDenominator)/a)")
//} else {
//    print("Your whole number is \(validNumerator/validDenominator)")
//}
//

