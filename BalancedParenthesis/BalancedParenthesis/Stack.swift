//
//  Stack.swift
//  BalancedParenthesis
//
//  Implementing functions push(),pop(),isEmpty(),size()
//
//  Created by Sumeet on 04/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Stack: NSObject
{
    var mHead : Node!
    
    //pushing element in the stack
    func push(element : String)
    {
        let newNode = Node(val : element)
        if (mHead == nil)
        {
            mHead = newNode
        }
        else
        {
            var lastNode = mHead
            while lastNode.mNext != nil
            {
                lastNode = lastNode.mNext
            }
            lastNode.mNext = newNode
        }
    }
    
    //Deleting top element in the stack
    func pop() -> Bool
    {
        if isEmpty() == false
        {
            if mHead.mNext == nil
            {
                mHead = nil
                return true
            }
            else
            {
                var currentNode = mHead , previousNode = mHead
                while currentNode.mNext != nil
                {
                    previousNode = currentNode
                    currentNode = currentNode.mNext
                    
                }
                previousNode.mNext = nil
                return true
            }
        }
        else
        {
            return false
        }
    }
    
    //checking Stack is empty or not
    func isEmpty() -> Bool
    {
        if (mHead == nil)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    //Return the size of the Stack
    func size() -> Int
    {
        var count = 1
        var currentnode = mHead
        while currentnode != nil
        {
            currentnode = currentnode.mNext
            count++
        }
        return count
    }

}
