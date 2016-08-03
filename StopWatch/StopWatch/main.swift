//
//  main.swift
//  StopWatch
//
//  Created by BridgeLabz on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation
/*
let date = NSDate()
let calendar = NSCalendar.currentCalendar()
let components = calendar.components([ .Hour, .Minute, .Second], fromDate: date)
let hour = components.hour
let minutes = components.minute
let seconds = components.second
print(hour)
print(minutes)
print(seconds)

*/


let time1 = CFAbsoluteTimeGetCurrent()
print(time1)

readLine()!

let time2 = CFAbsoluteTimeGetCurrent()
print(time2-time1)
