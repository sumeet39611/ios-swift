//
//  LinkList.swift
//  UnOrderedList
//
//  Implenting functions append(),isEmpty(),size(),search(),remove(),index(),insert() and display()
//
//  Created by Sumeet on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class LinkList: NSObject
{
    var mHead : Node!
   
    //adding elements in linklist
    func append(word : String)
    {
        //making new node
        let newNode = Node(val : word)
        
        if isEmpty()
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
    
    //checking linklist is empty or not
    func isEmpty() ->Bool
    {
        if mHead == nil
        {
            return true
        }
        return false
    }
    
    //number of elements in list
    func size() -> Int
    {
        var currentNode = mHead
        var count = 0
        while currentNode != nil
        {
            count++
            currentNode = currentNode.mNext
        }
       return count
    }
    
    
    //search the element in linklist
    func search(word : String) -> Bool
    {
        var currentNode = mHead
        while currentNode != nil
        {
            if currentNode.mData == word
            {
                print("Element is found")
                return true
            }
            currentNode = currentNode.mNext
        }
        return false
    }
    
    //remove element from list
    func remove(word : String)
    {
        var prevNode = mHead
        var currentNode = mHead.mNext
        
        if mHead.mData == word {
            mHead = mHead.mNext
        }
        else
        {
            while currentNode != nil
            {
                if currentNode!.mData == word
                {
                    prevNode.mNext = currentNode?.mNext
                    break
                }
                currentNode = currentNode!.mNext
                prevNode = prevNode.mNext
            }
        }
    }

    
    //finding index of element
    func index(word : String) ->Int
    {
        var currentNode = mHead
        var position = 1
        
        while currentNode != nil
        {
            if currentNode.mData == word
            {
                break
            }
            position++
            currentNode = currentNode.mNext
        }
        return position
    }
    
    //inserting element at particular position
    func insert(pos : Int, word : String)
    {
        var prevNode = mHead
        var currentNode = mHead
        
        let newNode = Node(val: word)
        
        if pos == 1
        {
            mHead = newNode
            mHead.mNext = currentNode
        }
        else if size() == pos
        {
            append(word)
        }
        else
        {
            for _ in 1...pos
            {
                prevNode = currentNode
                currentNode = currentNode.mNext
            }
            prevNode.mNext = newNode
            newNode.mNext = currentNode
        }
    }
    
    //display linklist
    func display()
    {
            var currentNode = mHead
            while currentNode != nil
            {
                print(currentNode.mData)
                currentNode = currentNode.mNext
            }
    }
    
}
