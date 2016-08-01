//
//  main.swift
//  FlipCoin
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//Taking user input
print("Enter a number of times you want to flip coin: ")
var noOfTimes: Int
noOfTimes = Int(readLine()!)!

var heads = 0
var tails = 0

//checking number positive or not
if noOfTimes > 0 {
    for i in 0..<noOfTimes{
        
        //generating random number
        var random = Float32(Int(arc4random_uniform(10)))/10
        
        //random number greater than 0.5 then its head
        if random > 0.5 {
           heads++
        }
        // otherwise tail
        else{
           tails++
        }
    }
}
 else{
    print("Error, Enter a positive value")
    exit(0)
}


//printing result as percentage of heads and tails
print("Percentage of heads : \(Float(heads*100)/Float(noOfTimes))")
print("Percentage of tails : \(Float(tails*100)/Float(noOfTimes))")


