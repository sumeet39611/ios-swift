//
//  main.swift
//  StockReport
//
//  Showing stock report with share name, number of share and share value
//
//  Created by Sumeet on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

var no: Int
var totalValue = 0

//no. of stock
print("Enter no. of stock")
no = Int(readLine()!)!

for _ in 0..<no
{
    var shareName : String
    var noOfShare : Int
    var sharePrice : Int
    
    //name of share
    print("Enter a share name: ")
    shareName = readLine()!

    //no. of share
    print("Enter a no. of share: ")
    noOfShare = Int(readLine()!)!

    //price of share
    print("Enter a price of share: ")
    sharePrice = Int(readLine()!)!

    //making object of class Stock
    let stockObj = Stock()

    //calling all function
   var name = stockObj.setName(shareName)
   var share = stockObj.setShare(noOfShare)
   var price = stockObj.setPrice(sharePrice)
    
    totalValue += stockObj.total()
    
    //displaying each values of stock
    print("share name is \(name)")
    print("No. of share is \(share)")
    print("share price is \(price)")
    print("value of stock \(stockObj.mStockValue)")

}

//displaying total value of stock
print("total value of stock is \(totalValue)")


