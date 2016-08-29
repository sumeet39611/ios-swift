//
//  Node.swift
//  UnOrderedList
//
//  Creating Node
//
//  Created by Sumeet on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Node: NSObject
{
    var mData : String! = nil
    var mNext : Node?
    
    //constructor
    init(val: String)
    {
        self.mData = val
    }
}
