// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.markdown.
/*:
 # Stack Challenges
 
 ## #1. Reserve an Array
 
 Create a function that prints the contents of an array in reversed order.
 */

let array: [Int] = [1, 2, 3, 4, 5]

// Your code here
func printInReverse<T>(_ elements: [T]) {
    var myStack = Stack<T>()
    
    for value in elements {
        myStack.push(value)
    }
    
    while let value = myStack.pop() {
        print(value)
    }
}

func printWithReverse<T>(_ elements: [T]) {
    let reversed = elements.reversed()
    reversed.forEach { value in
        print(value)
    }
}


// printInReverse(array)
printInReverse(array)
printWithReverse(array)
//: [Next Challenge](@next)
