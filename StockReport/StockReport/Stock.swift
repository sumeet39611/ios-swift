//
//  Stock.swift
//  StockReport
//
//  Created by BridgeLabz on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Stock: NSObject {

    var shareName = ""
    var noOfShare = 0
    var sharePrice = 0
    var t = 0
    
    //setting name
    func setName(name : String) ->String {
        shareName = name
        return shareName
    }
    
    //setting no. of share
    func setShare(share : Int) ->Int {
        noOfShare = share
        return noOfShare
    }
    
    //setting price
    func setPrice(price : Int) ->Int {
        sharePrice = price
        return sharePrice
    }
    
    //find total
    func total() ->Int {
    t = noOfShare * sharePrice
        return t
    }
    
}
