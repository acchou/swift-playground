//: [Previous](@previous)

import Foundation

struct S {
    var count: UInt
    let value: String
    
    init(_ value: String) {
        self.value = value
        count = 0
    }
}

var s = S("Hello")
var t = s
t.count += 1
t.count
s.count

let verbose = true

let h = ["a":s]
if var o = h["a"] {
    if o.count == 0 || verbose {
        o.count += 1
        o.count
        s.count // Not modified by the changes to o.count. o is a copy.
    }
}



//: [Next](@next)
