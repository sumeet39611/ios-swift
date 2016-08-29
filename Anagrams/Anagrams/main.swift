//
//  main.swift
//  Anagrams
//
//  Two strings are anagram or not
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var string1 : String
var string2 : String

//taking first string
print("Enter a first string : ")
string1 = readLine()!

//taking second string
print("Enter a second string : ")
string2 = readLine()!

//comparing lenghts of two strings
if string1.characters.count != string2.characters.count
{
    print("Strings are not anagram")
}
else
{
    var c = 0
    for i in string1.characters
    {
        for var j in string2.characters
        {
            if i==j
            {
                c++
                break
            }
        }
    }
    
    // printing strings are anagram or not
    if c == string1.characters.count
    {
        print("Strings are anagram")
    }
    else
    {
        print("Strings are not Anagram")
    }
}