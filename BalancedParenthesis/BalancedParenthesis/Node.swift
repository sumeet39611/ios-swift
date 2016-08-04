//
//  Node.swift
//  BalancedParenthesis
//
//  Created by BridgeLabz on 04/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Node: NSObject {
    var data : String! = nil
    var next : Node?
    
    init(val: String){
        self.data = val
    }
}