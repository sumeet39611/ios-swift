//
//  main.swift
//  HarmonicNumber
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//Taking user input
print("Enter a number: ")
var num:Int
num = Int(readLine()!)!

var sum = 0.0

//calculating Nth harmonic number
for i in 1...num {
    
    sum += (Double(1)/Double(i))
}

//display result
print(sum)

