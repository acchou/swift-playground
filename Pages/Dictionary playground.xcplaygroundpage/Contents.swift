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

func foo(_ i: Int) {
    if var x = a[i] {
        x += 1
        x += 1
    } else {
        a[i] = 1
    }
}

foo(0)

let index = a.index(forKey: 0)
let index2 = a.index(forKey: 4)
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
    c.x += 1
    c.x += 1
    c.x += 1
} else {
    b[0] = C(42)
}

print("x\\\"]".debugDescription)


//: [Next](@next)
