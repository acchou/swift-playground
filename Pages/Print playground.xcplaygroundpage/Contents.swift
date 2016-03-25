//: [Previous](@previous)

import Foundation

let a = "hello"
let b = "world"
let c = "Andy"
print(a, b, c) // print multiple items with space separator, newline at end
print(a+b+c) // print multiple strings concateanted together with a newline at end. No separator.
print("\(a), \(b). \(c)") // Interpolation of expressions into a string. Provides fine grained control without concat performance hit.
print(a, b, c, separator:";")
print(a, b, c, terminator:"")
print(a, b, c, "\n", terminator:"")


// Print wrapper behavior
func myprint(args: Any...) {
    print(args)
}

myprint("hello", "world")


//: [Next](@next)
