//
//  main.swift
//  PrimeFactor
//
//  Prime factors of a given number
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//function to find prime factor of number
func findPrimeFactor(var num : Double)
{
    //print number of 2's that divide number
    while num%2 == 0
    {
        print(2)
        num = num/2
    }
    
    //number must be odd at this point , so we can skip one element
    for var i=3.0; i<=sqrt(num); i+=2
    {
        while num%i == 0
        {
            print(i)
            num=num/i
        }
    }
    
    //This condition is to handle the case when number is a prime number greater than 2
    if num>2
    {
        print(num)
    }
    
}

var num : Double

//taking user input
print("Enter a number: ")
num=Double(readLine()!)!

//calling function passing argument as number
findPrimeFactor(num)
