//
//  LinkList.swift
//  UnOrderedList
//
//  Created by BridgeLabz on 03/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

class LinkList: NSObject {
    var head : Node!
   
    //adding elements in linklist
    func append(word : String){
        //making new node
        let newNode = Node(val : word)
        
        if isEmpty(){
            head = newNode
        }else{
            var lastNode = head
            while lastNode.next != nil {
                lastNode = lastNode.next
            }
            lastNode.next = newNode
        }

    }
    
    //checking linklist is empty or not
    func isEmpty() ->Bool {
        if head == nil {
            return true
        }
        return false
    }
    
    //number of elements in list
    func size() -> Int {
        var currentNode = head
        var count = 0
        while currentNode != nil {
            count++
            currentNode = currentNode.next
        }
       return count
    }
    
    
    //search the element in linklist
    func search(word : String) -> Bool{
       
        var currentNode = head
        
        while currentNode != nil {
            if currentNode.data == word {
                print("Element is found")
                return true
            }
            currentNode = currentNode.next
        }
        return false
    }
    
    //remove element from list
    func remove(word : String) {
        var prevNode = head
        var currentNode = head.next
        
        if head.data == word {
            head = head.next
        }
        else {
            while currentNode != nil{
                if currentNode!.data == word {
                    prevNode.next = currentNode?.next
                    break
                }
                currentNode = currentNode!.next
                prevNode = prevNode.next
            }
        }
    }

    
    //finding index of element
    func index(word : String) ->Int {
        var currentNode = head
        var position = 1
        
        while currentNode != nil {
            if currentNode.data == word {
                break
            }
            position++
            currentNode = currentNode.next
        }
        return position
    }
    
    //inserting element at particular position
    func insert(pos : Int, word : String) {
        var prevNode = head
        var currentNode = head
        
        let newNode = Node(val: word)
        
        if pos == 1 {
            head = newNode
            head.next = currentNode
        }
        else if size() == pos {
            append(word)
        }
        else {
            for _ in 1...pos {
                prevNode = currentNode
                currentNode = currentNode.next
            }
            prevNode.next = newNode
            newNode.next = currentNode
        }
        
        
    }
    
    //display linklist
    func display() {
            var currentNode = head
            while currentNode != nil{
                print(currentNode.data)
                currentNode = currentNode.next
            }
    
    }
    
}
