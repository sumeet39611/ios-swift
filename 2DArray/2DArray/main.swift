//
//  main.swift
//  2DArray
//
//  printing 2D array
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var m:Int
var n:Int

//initialised empty 2D array
var myarr = [[Int]]()

//rows
print("Enter no of rows: ")
m = Int(readLine()!)!

//columns
print("Enter no of columns: ")
n = Int(readLine()!)!

//asking for user input
print("Enter the \(m*n) elements : ")

for _ in 0..<m
{
    var row = [Int]()
    for _ in 0..<n
    {
        row.append(Int(readLine()!)!)
    }
    
    //adding elements to array
    myarr.append(row)
}

//displaying 2D array
print("Result 2D array is: ")
print(myarr)

