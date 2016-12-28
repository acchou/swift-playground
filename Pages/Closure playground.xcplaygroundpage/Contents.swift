//: [Previous](@previous)

import Foundation

var v: (Int, Int) -> Bool

func f(_ x: Int, y: Int) -> Bool {
    return x + y > 0
}

f(0, y: 1)

// Assigning to a function typed variable loses labeled arguments.
v = f
v(1, 1)  // No label needed for 'y'
v(0, 1)

// Can use variables to redefine argument labels.
var q: (_ a: Int, _ b: Int) -> Bool
q = f
q(0, 1)
// q(0, 1)   // Error, missing argument labels.

// variable of Member functions are curried.
struct C {
    var m: Int
    func memberfunc(_ x: Int) -> Int { return x + m }
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

// Closure type inference

// Infer argument and return type
let zero = { return 0 }
zero()

// Infer return type
let succ = { (x) in return x+1 }
succ(42)

let twotimes = { $0 * 2 }
twotimes(100)

let square = { (x) -> Int in return x * x }
square(10)

let mult = { (x, y) -> Int in return x * y }
mult(6, 7)

// Trailing closures

func trail(closure: () -> Void) {
    closure()
}

trail {
    print("I'm in a trailing closure")
}

func multi(closure1: (() -> Void) = {}, closure2: (() -> Void) = {}) {
    print("closure1")
    closure1()
    print("closure2")
    closure2()
}

multi (closure1: {print("AAA")}) {
    print("Where am I?")
}

multi {
    print("Hmmm... I'm in closure2")
}

//: [Next](@next)
