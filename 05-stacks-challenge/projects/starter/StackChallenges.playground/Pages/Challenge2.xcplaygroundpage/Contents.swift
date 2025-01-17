// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 [Previous Challenge](@previous)
 
 ## #2. Balance Parentheses
 
 Check for balanced parentheses. Given a string, check if there are `(` and `)` characters, and return `true` if the parentheses in the string are balanced.
 ```
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 ```
 */
var testString1 = "h((e))llo(world)()"

// your code here
func checkParentheses(_ element: String) -> Bool {
    
    var myStack = Stack<Character>()
    
    for char in element {
        if char == "(" {
            myStack.push(char)
        } else if char == ")" {
            
            if myStack.isEmpty {
                return false
            } else {
                myStack.pop()
            }
        }
    }
    return myStack.isEmpty
}

// checkParentheses(testString1) // should be true
