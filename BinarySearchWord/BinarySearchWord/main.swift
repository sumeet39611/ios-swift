//
//  main.swift
//  BinarySearchWord
//
//  Searching word from file using binary search
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//default file manager
var fileManager = NSFileManager.defaultManager()

//path of file
let location = "/Users/bridgelabz/Desktop/sumeet/ios/swiftPrograms/ff.txt"

var arr = [String]()

//checking file exist or not
if fileManager.fileExistsAtPath(location)
{
    var data = try NSString(contentsOfFile: location, encoding:NSASCIIStringEncoding)
    var array = [String]()

    data.enumerateLinesUsingBlock({(line,stop) -> () in
        if(line != "\n")
        {
            array.append(line)
        }
    })

    for i in array
    {
        //words are separated by comma
        arr = i.componentsSeparatedByString(",")
    }
}
else
{
    print("file not found at given path")
    exit(0)
}

var temp = ""

//sorting the strings in ascending order
for var i=0;i<arr.count;i++
{
    for var j=0;j<arr.count-i-1;j++
    {
        
        if arr[j] > arr[j+1]
        {
            temp = arr[j]
            arr[j] = arr[j+1]
            arr[j+1] = temp
        }
        
    }
}

//printing sorted array in ascending
print(arr)

//taking word you want to search
print("Enter a word you want to search: ")
var str = readLine()!

//setting index of first,last,middle
var first=0
var last = arr.count-1
var middle = (first+last)/2

//searching word in list
while first <= last
{
    if arr[middle]<str
    {
        first = middle+1
    }
    else if arr[middle]==str
        {
            print("Word is found")
            break
        }
        else
        {
            last = middle-1
        }
    middle=(first+last)/2
}

if first>last
{
    print("Word is not found")
}

