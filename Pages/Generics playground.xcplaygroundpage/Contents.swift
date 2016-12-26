//: [Previous](@previous)

import Foundation

class C<T> {
    // Static stored properties not supported in generics yet.
    // static var v: String = "abc"
    
    func foo(_ value: T) { }
    
    convenience init(_ value: T, file: String = #file, line: Int = #line) {
        print("bar")
        self.init(file: file, line: line)
    }
    
    init(file: String = #file, line: Int = #line) {
        print("baz, \(file):\(line)")
    }
}

// Not allowed.
// class Outer {
//     class Inner<T> { }
// }

var cint = C<Int>()
var cstring = C<String>()

protocol Reporter {
    func report()
}

extension C : Reporter {
    func report() {
        print(type(of: self))
    }
}

var a: Array<Reporter> = []
a.append(cint)
a.append(cstring)

for r in a {
    r.report()
}

//: [Next](@next)
