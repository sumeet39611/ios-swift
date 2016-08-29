//
//  main.swift
//  InsertionSort
//
//  sorting out words from file using insertion sort
//
//  Created by Sumeet on 03/08/16.
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
    //file not exist
    print("file not found at given path")
}

//insertion sorting
for var i=1;i<arr.count;i++
{
    var temp = arr[i]
    var index = i-1
    
    while (index>=0 && arr[index]>temp )
    {
        arr[index+1] = arr[index]
        --index
    }
    arr[index+1] = temp
}

//displaying result array
print("Resultant array after insertion sorting :")
for items in arr
{
    print(items)
}