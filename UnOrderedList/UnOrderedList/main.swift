//
//  main.swift
//  UnOrderedList
//
//  Created by BridgeLabz on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

let list = LinkList()

//taking data from file
var filemanager = NSFileManager.defaultManager()

//path of file
let location = "/Users/bridgelabz/Desktop/sumeet/ios/swiftPrograms/ff.txt"
var arr = [String]()

//checking file exist or not
if filemanager.fileExistsAtPath(location) {
    var data = try NSString(contentsOfFile: location, encoding:NSASCIIStringEncoding)
    var array = [String]()
    
    data.enumerateLinesUsingBlock({(line,stop) -> () in
        if(line != "\n"){
            array.append(line)
        }
    })
    
    for i in array{
        //words are separated by comma
        arr = i.componentsSeparatedByString(",")
    }
}
else{
    print("file not found at given path")
}

//adding data in linklist from file
for items in arr {
    list.append(items)
}

//counting no. of elements in list
var c:Int
c = list.size()
print("size of list is : \(c)")

//taking user input to search word in list
print("Enter a word you want search in list")
var str = readLine()!

//searching
if list.search(str) {
    //if found then deleted from list
    list.remove(str)
}
else {
    // if not then add to the list
    list.append(str)
}

//finding index of particular element
print("Enter a word you want to find index: ")
var str1 = readLine()!

var pos: Int
pos = list.index(str1)
print("index of user element: \(pos)")
//displaying list

print("enter a position and word")
var position = Int(readLine()!)!
var str2 = readLine()!
list.insert(position, word: str2)
list.display()


