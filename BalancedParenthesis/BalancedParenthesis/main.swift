//
//  main.swift
//  BalancedParenthesis
//
//  Taking expression and checking is balanced or not using Stack
//
//  Created by Sumeet on 04/08/16.
//  Copyright © 2016 com.bridgeLabz. All rights reserved.
//

import Foundation

//taking expression from user
print("Enter the expression :")
let expression = readLine()!

//making object of class stack
let stackObj = Stack()

var flag = 0
for i in expression.characters
{
    if i == "("
    {
        //pushing the parentheses into the stack
        stackObj.push("(")
    }
    else if i == ")"
    {
         //checking element is poped from the stack or not
        if stackObj.pop() == false
        {
            print("Arithmetic Expression is not balanced")
            flag = 1
            break
        }
    }
}

if flag == 0
{
    if stackObj.isEmpty() == true
    {
        print("The Arithmetic Expression is balanced")
    }
    else
    {
        print("Arithmetic Expression is not balanced")
        
    }
}
