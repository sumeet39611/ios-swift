//
//  main.swift
//  BubbleSort
//
//  Created by BridgeLabz on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

// initialising empty string array
var arr = [String]()

//no. of elements in array
print("enter no. of elements you want to enter in array")
var n = Int(readLine()!)!

//taking user input
print("Enter elements :")
var str:String

//adding element in array
for var i=0;i<n;i++ {
    str = readLine()!
    arr.append(str)
}

//displaying array before sorting
print(arr)

//bubble sorting
for var i=0;i<n;i++ {
    for var j=0;j<n-1-i;j++ {
        if arr[j]>arr[j+1] {
            var temp = arr[j+1]
            arr[j+1] = arr[j]
            arr[j] = temp
        }
    }
}

// displaying array after sorting
print("resultant array after bubble sort:")
print(arr)

