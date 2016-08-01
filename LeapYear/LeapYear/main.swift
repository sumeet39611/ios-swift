//
//  main.swift
//  LeapYear
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//function for finding leap year
func findLeapYear(yr:Int){
   
    //checking centuary years first
    if yr%400 == 0 {
        print("\(yr) is leap year")
    }
    else if yr%100 == 0{
        print("\(yr) is not leap year")
    }
    else if yr%4 == 0{
        print("\(yr) is leap year")
    }
    else{
        print("\(yr) is not leap year")
    }
}


//Taking user input as year
print("Enter a year : ")
var yr: Int
yr = Int(readLine()!)!

//call to function
findLeapYear(yr)

