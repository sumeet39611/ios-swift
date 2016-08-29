//
//  main.swift
//  Gambler
//
//  Percentage of wins and loss of gambler
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var stake : Int
var goal : Int
var noOfTrials : Int
var bets = 0
var wins = 0

//taking stake value
print("Enter a stake value: ")
stake = Int(readLine()!)!

//taking goal value
print("Enter a goal value: ")
goal = Int(readLine()!)!

//taking number of trials
print("Enter a Number of trials you want")
noOfTrials = Int(readLine()!)!

for var i=0;i<noOfTrials;i++
{
    var cash=stake
 
    //loop continue till gambler is win or broke
    while (cash>0 && cash<goal)
    {
        bets++
     
        //generating random number
        var random = Float32(Int(arc4random_uniform(10)))/10
        
        //random number greater than 0.5 then cash incremented
        if random < 0.5
        {
            cash++
        }
        // otherwise cash decremented
        else
        {
            cash--
        }

    }
    
    //if cash value equal to goal value then gambler wins
    if cash == goal
    {
        wins++
    }
}

//displaying result as percentage of wins
print("Percentage of wins \(Float(wins*100)/Float(noOfTrials))")

//displaying result as percentage of loss
print("Percentage of loss \(Float((100-wins)*100)/Float(noOfTrials))")

