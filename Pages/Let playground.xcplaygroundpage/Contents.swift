//: [Previous](@previous)

import Foundation

let i: Int
let j = 42

if j % 2 == 0 {
    i = 0
} else {
    i = 1
}

print(i)

struct S {
    var x: Int
}

let s = S(x: 10)
// The following line doesn't compile, because s is a let constant.
// s.x = 42

// However this is fine because t is a var.
var t = S(x: 10)
t.x = 42

//: [Next](@next)
