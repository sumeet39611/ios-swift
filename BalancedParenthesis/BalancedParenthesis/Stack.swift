//
//  Stack.swift
//  BalancedParenthesis
//
//  Created by BridgeLabz on 04/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class Stack: NSObject {
    var head : Node!
    
    //pushing element in the stack
    func push(element : String){
        let newNode = Node(val : element)
        if (head == nil){
            head = newNode
        }else{
            var lastNode = head
            while lastNode.next != nil {
                lastNode = lastNode.next
            }
            lastNode.next = newNode
        }
    }
    
    //Deleting top element in the stack
    func pop() -> Bool{
        if isEmpty() == false {
            if head.next == nil {
                head = nil
                return true
            }
            else{
                var currentNode = head , previousNode = head
                while currentNode.next != nil {
                    previousNode = currentNode
                    currentNode = currentNode.next
                    
                }
                previousNode.next = nil
                return true
            }
        }else{
            return false
        }
    }
    
    //checking Stack is empty or not
    
    func isEmpty() -> Bool{
        
        if (head == nil){
            return true
        }
        else{
            return false
        }
    }
    
    //Return the size of the Stack
    
    func size() -> Int {
        var count = 1
        var currentnode = head
        while currentnode != nil {
            currentnode = currentnode.next
            count++
        }
        return count
    }

}
