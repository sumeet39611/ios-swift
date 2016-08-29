//
//  Stock.swift
//  StockReport
//
//  setting share name,share price, number of share and total stock value
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Stock: NSObject
{
    var mShareName = ""
    var mNoOfShare = 0
    var mSharePrice = 0
    var mStockValue = 0
    
    //setting share name
    func setName(name : String) ->String
    {
        mShareName = name
        return mShareName
    }
    
    //setting no. of share
    func setShare(share : Int) ->Int
    {
        mNoOfShare = share
        return mNoOfShare
    }
    
    //setting share price
    func setPrice(price : Int) ->Int
    {
        mSharePrice = price
        return mSharePrice
    }
    
    //find total
    func total() ->Int
    {
        mStockValue = mNoOfShare * mSharePrice
        return mStockValue
    }
    
}
