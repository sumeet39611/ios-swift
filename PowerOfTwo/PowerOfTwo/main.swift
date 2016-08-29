//
//  main.swift
//  PowerOfTwo
//
//  power of 2
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var num:Int

//taking user input
print("Enter a number: ")
num = Int(readLine()!)!

//checking number is in range 0-32 or not
if num>0 && num<=31
{
    for i in 1...num
    {
        //printing power of 2
        print(pow(Double(2), Double(i)))
    }
}
else
{
    //printing error
    print("Error, enter a number in range 0-31")
}
