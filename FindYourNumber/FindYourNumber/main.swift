//
//  main.swift
//  FindYourNumber
//
//  Finding user number from certain range using binary search
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//function for finding number
func findNumber(lower: Int, higher : Int)
{
    //displaying number if found
    if lower == higher
    {
        print("Number is found")
        return
    }
    
    var middle : Int
    
    //finding middle number in range
    middle = (lower + higher)/2
    
    print("Press 1 if your number is in range \(lower) - \(middle)")
    print("Press 2 if your number is in range \(middle+1)-\(higher)")
    
    //taking choice from above list
    let choice = Int(readLine()!)!
    
    switch choice
    {
        case 1 :
                //left hand side in range
                findNumber(lower, higher: middle)
                break
        case 2 :
                //right hand side in range
                findNumber(middle+1, higher: higher)
                break
        default :
                print("wrong choice")
        
    }
    
}

var number:Int

//taking number you want to find
print("Enter a number you want to find : ")
number = Int(readLine()!)!

//calling function
findNumber(0,higher: 99)


