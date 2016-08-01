//
//  main.swift
//  PowerOfTwo
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//taking user input
print("Enter a number: ")
var num:Int

num = Int(readLine()!)!

//checking number is in range 0-32 or not
if num>0 && num<=31 {
    
for i in 1...num {
    
    //printing of power of 2
    print(pow(Double(2), Double(i)))
}

}
else{
    print("Error, enter a number in range 0-31")
}
