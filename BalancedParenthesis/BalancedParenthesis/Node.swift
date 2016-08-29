//
//  Node.swift
//  BalancedParenthesis
//
//  Creating node
//
//  Created by Sumeet on 04/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Node: NSObject {
    var mData : String! = nil
    var mNext : Node?
    
    init(val: String){
        self.mData = val
    }
}