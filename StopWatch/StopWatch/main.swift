//
//  main.swift
//  StopWatch
//
//  Stopwatch for measuring elapsed time
//
//  Created by Sumeet on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//getting start time
let time1 = CFAbsoluteTimeGetCurrent()

//printing start time
print(time1)

//waiting
readLine()!

//getting stop time
let time2 = CFAbsoluteTimeGetCurrent()

//printing elapsed time
print(time2-time1)


/*
// getting current time with hours,minutes and seconds
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
