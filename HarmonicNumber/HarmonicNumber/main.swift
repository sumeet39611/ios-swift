//
//  main.swift
//  HarmonicNumber
//
//  Printing Nth harmonic number
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var num:Int
var sum = 0.0

//taking user input
print("Enter a number: ")
num = Int(readLine()!)!

//checking number is not equal to zero
if num != 0
{
    //calculating Nth harmonic number
    for i in 1...num
    {
        sum += (Double(1)/Double(i))
    }

    //display result as Nth harmonic number
    print(sum)
}
else
{
    //printing error
    print("Error")
}

