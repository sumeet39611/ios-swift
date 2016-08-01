//
//  main.swift
//  CouponNumber
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//taking input
print("Enter a input")
var num: Int
num = Int(readLine()!)!

var arr = [Int]()

var i = 0

while i < num {
    i++
    var flag = 0
   
    //generating random number
    var random = Int(arc4random_uniform(UInt32(num * 5)))
    
    for var j in 0..<arr.count {
        
        if arr[j] == random{
            flag++
        }
    }
    
    if flag == 0 {
        //adding element in array if not present earlier
        arr.append(random)
    }
    else {
        i--
    }
}

//printing distinct numbers
print(arr)

