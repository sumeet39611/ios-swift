//
//  main.swift
//  UserName
//
//  Created by BridgeLabz on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation


print("Enter your name : ")

var stringTemplate: String

//Taking user input
stringTemplate = readLine()!

//Checking length has to be mimimum length 3
if stringTemplate.characters.count >= 3 {
    print("Hello \(stringTemplate), How are you?")
}
else{
    print ("Error, Username has to be minimum length 3 ")
}