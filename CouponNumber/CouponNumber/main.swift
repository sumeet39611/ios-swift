//
//  main.swift
//  CouponNumber
//
//  Generating Coupon number with distinct numbers
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var num: Int
var arr = [Int]()
var i = 0

//taking input
print("Enter a input")
num = Int(readLine()!)!

while i < num
{
    i++
    var flag = 0
   
    //generating random number
    var random = Int(arc4random_uniform(UInt32(num * 5)))
    
    for var j in 0..<arr.count
    {
        if arr[j] == random
        {
            flag++
        }
    }
    
    if flag == 0
    {
        //adding element in array if not present earlier
        arr.append(random)
    }
    else
    {
        i--
    }
}

//printing coupon number with distinct numbers
print(arr)

