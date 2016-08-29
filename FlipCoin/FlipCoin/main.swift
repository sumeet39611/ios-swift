//
//  main.swift
//  FlipCoin
//
//  Showing percentage of heads and tails
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var noOfTimes: Int
var heads = 0
var tails = 0

//Taking user input
print("Enter a number of times you want to flip coin: ")
noOfTimes = Int(readLine()!)!

//checking number is positive or not
if noOfTimes > 0
{
    for i in 0..<noOfTimes
    {
        //generating random number
        var random = Float32(Int(arc4random_uniform(10)))/10
        
        //random number greater than 0.5 then its head
        if random > 0.5
        {
           heads++
        }
        // otherwise tail
        else
        {
           tails++
        }
    }
}
 else
{
    //printing error
    print("Error, Enter a positive value")
    exit(0)
}


//printing result as percentage of heads
print("Percentage of heads : \(Float(heads*100)/Float(noOfTimes))")


//printing result as percentage of tails
print("Percentage of tails : \(Float(tails*100)/Float(noOfTimes))")


