//: [Previous](@previous)

import Foundation

example(of: "using a stack") {
  var stack = Stack<Int>()
  stack.push(1)
  stack.push(2)
  stack.push(3)
  stack.push(4)

  print(stack)

  if let poppedValue = stack.pop() {
    assert(4 == poppedValue)
    print("Popped: \(poppedValue)")
  }
}

example(of: "initializing a stack from an array literal") {
  var stack: Stack = [1.0, 2.0, 3.0, 4.0]
  print(stack)
  stack.pop()
}

example(of: "initializing a stack from an array") {
  let array = ["A", "B", "C", "D"]
  var stack = Stack(array)
  print(stack)
  stack.pop()
}




//MARK:- Challenges

// solution 1
func printInReverse<T>(_ array: [T]) {
    var stack = Stack<T>()
    for value in array {
        stack.push(value)
    }
    while let value = stack.pop() {
        print(value)
    }
}

printInReverse(["olllolo", "lalalala", "gagaga"])



// solution 2


func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}




checkParentheses("sdoifhjas(o)(d)")
