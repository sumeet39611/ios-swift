//
//  main.swift
//  UnOrderedList
//
//  Reading data from file and do the operations such as append,remove,insert,display,index,isempty,size on created linklist
//
//  Created by Sumeet on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

let linkListObj = LinkList()

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
}

//adding data in linklist from file
for items in arr
{
    linkListObj.append(items)
}

var count:Int

//counting no. of elements in list
count = linkListObj.size()
print("size of list is : \(count)")

//taking user input to search word in list
print("Enter a word you want search in list")
var str = readLine()!

//searching
if linkListObj.search(str)
{
    //if found then deleted from list
    linkListObj.remove(str)
}
else
{
    // if not then add to the list
    linkListObj.append(str)
}

print("Enter a word you want to find index: ")
var str1 = readLine()!
var pos: Int

//finding index of particular element
pos = linkListObj.index(str1)
print("index of user element: \(pos)")


print("enter a position and word")
var position = Int(readLine()!)!
var str2 = readLine()!

//inserting element at particular position
linkListObj.insert(position, word: str2)

//displaying list
linkListObj.display()


