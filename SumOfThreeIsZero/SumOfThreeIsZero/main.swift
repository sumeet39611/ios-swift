//
//  main.swift
//  SumOfThreeIsZero
//
//  Printing number of triplets that sum to exactly zero
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//fuction for finding triplets that sum exactly equal to zero
func findZero(arr:[Int], n:Int)
{
    var count = 0
    for var i=0;i<n;i++
    {
        for var j=i+1;j<n;j++
        {
            for var k=j+1;k<n;k++
            {
                //checking sum of three elements is zero or not
                if (arr[i]+arr[j]+arr[k]) == 0
                {
                    //diplaying triplets
                    print("combination of \(arr[i]) and \(arr[j]) and \(arr[k]) is zero")
                    //counting no. of triplets
                    count++
                }
            }
        }
    }
    //printing number of triplets that sum exactly zero
    print("No of triplets that sum exactly equal to zero is \(count)")
}

var arr = [Int]()
var num :Int

//taking user input
print("Enter no. of elements you want to enter :")
num = Int(readLine()!)!

//adding elements to array
for _ in 0..<num
{
    arr.append(Int(readLine()!)!)
}

//calling function as arguments array and no. of elements
findZero(arr , n: num)
