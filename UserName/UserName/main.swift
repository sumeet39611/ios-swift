//
//  main.swift
//  UserName
//
//  Showing string template with proper user name
//
//  Created by Sumeet on 01/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var stringTemplate: String

//Taking user input
print("Enter your name : ")
stringTemplate = readLine()!

//Checking length has to be mimimum 3
if stringTemplate.characters.count >= 3 
{
    //printing string template
    print("Hello \(stringTemplate), How are you?")
}
else
{
    //printing error
    print ("Error, Username has to be minimum length 3 ")
}
