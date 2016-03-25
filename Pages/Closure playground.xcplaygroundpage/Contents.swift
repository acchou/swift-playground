//: [Previous](@previous)

import Foundation

var v: (Int, Int) -> Bool

func f(x: Int, y: Int) -> Bool {
    return x + y > 0
}

f(0, y: 1)

// Assigning to a function typed variable loses labeled arguments.
v = f
v(1, 1)  // No label needed for 'y'
v(0, 1)

// Can use variables to redefine argument labels.
var q: (a: Int, b: Int) -> Bool
q = f
q(a: 0, b: 1)
// q(0, 1)   // Error, missing argument labels.

// variable of Member functions are curried.
struct C {
    var m: Int
    func memberfunc(x: Int) -> Int { return x + m }
}

let o = C(m: 42)

let w = C.memberfunc
let y = C.memberfunc(o)
y(10)
w(o)(3)

// Operators.
let eq: (Int, Int) -> Bool = (==)
eq(5, 6)
eq(10,10)


//: [Next](@next)
