//: [Previous](@previous)

var a: Dictionary<Int, Int> = [:]

a[0] = 42
a[1] = 10

a

a.keys.contains(0)
a.keys.contains(40)
if let v = a[0] {
    print("a has index 0")
}
if let v = a[32] {
    print("a has index 32")
}
a
a[32] = 50
if let v = a[32] {
    print("a has index 32")
}

func foo(i: Int) {
    if var x = a[i] {
        x++
        x++
    } else {
        a[i] = 1
    }
}

foo(0)

let index = a.indexForKey(0)
let index2 = a.indexForKey(4)
a

class C : Hashable {
    var x: Int
    init(_ x: Int) {
        self.x = x
    }
    var hashValue: Int { return x.hashValue }
}

func ==(lhs: C, rhs: C) -> Bool {
    return lhs.x == rhs.x
}

var b: Dictionary<Int, C> = [:]
b[0] = C(0)
b[1] = C(1)

if let c = b[0] {
    c.x++
    c.x++
    c.x++
} else {
    b[0] = C(42)
}

print("x\\\"]".debugDescription)


//: [Next](@next)
