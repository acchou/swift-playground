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


class C {
    var value = 0
}

struct MyStruct {
    let c = C()
}

let ms = MyStruct()
ms.c.value = 42

// Default constructors for structs
struct Struct {
    var a: Int
    let b: String
}

Struct(a: 42, b: "hello")

/// Can default constructors use default values?
struct Default {
    let a: Int = 42
    let b: String
}

Default(b: "there")
// this results in an error:
// Default(a: 0, b:"there")

// Do extensions preserve default constructors?
extension Struct {
    init() { a = 42; b = "there" }
}

Struct(a: 0, b: "hello")
var u = Struct()
print(u)

// Do arrays that contain structs allow for modification of the struct?
struct VarStruct {
    var a: Int
}

let arr = [VarStruct(a: 0)]
var x = arr[0]
x.a = 42
x.a
arr  // still 0

// Can you copy structs?
var target = VarStruct(a: 10)
let source = VarStruct(a: 4)
target = source
target.a   // Yes, you can assign structs.

//: [Next](@next)
