//
//  main.swift
//  LeapYear
//
//  Year is leap year or not
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//function for finding leap year
func findLeapYear(yr:Int)
{
    //checking centuary years first
    if yr%400 == 0
    {
        //printing year as leap year
        print("\(yr) is leap year")
    }
    else if yr%100 == 0
        {
            //printing year as not leap year
            print("\(yr) is not leap year")
        }
        else if yr%4 == 0
            {
                //printing year as leap year
                print("\(yr) is leap year")
            }
            else
                {
                    ////printing year as not leap year
                    print("\(yr) is not leap year")
                }
}

var yr: Int

//Taking user input as year
print("Enter a year : ")
yr = Int(readLine()!)!

//call to function passing year as argument
findLeapYear(yr)

