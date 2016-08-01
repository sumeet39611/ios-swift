//
//  main.swift
//  Gambler
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//taking stake value
print("Enter a stack value: ")
var stake : Int
stake = Int(readLine()!)!

//taking goal value
print("Enter a goal value: ")
var goal : Int
goal = Int(readLine()!)!

//taking number of trials
print("Enter a Number of trials you want")
var noOfTrials : Int
noOfTrials = Int(readLine()!)!

var bets = 0
var wins = 0
for var i=0;i<noOfTrials;i++ {
    
    var cash=stake
    //loop continue till gambler is win or broke
    while (cash>0 && cash<goal) {
        bets++
     
        //generating random number
        var random = Float32(Int(arc4random_uniform(10)))/10
        
        //random number greater than 0.5 then cash incremented
        if random < 0.5 {
            cash++
        }
            // otherwise decremented
        else{
            cash--
        }

    }
    //if cash value equal to goal value then gambler wins
    if cash == goal {
        wins++
    }
}

//displaying result
print("Percentage of wins \(Float(wins*100)/Float(noOfTrials))")
print("Percentage of loss \(Float((100-wins)*100)/Float(noOfTrials))")

