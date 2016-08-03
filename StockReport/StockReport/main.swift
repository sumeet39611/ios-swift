//
//  main.swift
//  StockReport
//
//  Created by BridgeLabz on 02/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//no. of stocks
print("Enter no. of stock")
var no: Int
no = Int(readLine()!)!
var totalValue = 0

for _ in 0..<no {
    
    //name of share
    print("Enter a share name: ")
    var shareName : String
    shareName = readLine()!

    //no. of share
    print("Enter a no. of share: ")
    var noOfShare : Int
    noOfShare = Int(readLine()!)!

    //price of share
    print("Enter a price of share: ")
    var price : Int
    price = Int(readLine()!)!

    //making object of class Stock
    let ss = Stock()

    //calling all function
    ss.setName(shareName)
    ss.setShare(noOfShare)
    ss.setPrice(price)
    totalValue += ss.total()
    
    //displaying each values of stock
    print("share name is \(ss.shareName)")
    print("No. of share is \(ss.noOfShare)")
    print("share price is \(ss.sharePrice)")
    print("value of stock \(ss.t)")

}

//displaying total value of stock
print("total value of stock is \(totalValue)")


