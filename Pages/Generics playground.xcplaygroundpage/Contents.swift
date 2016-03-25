//: [Previous](@previous)

import Foundation

class C<T> {
    // Static stored properties not supported in generics yet.
    // static var v: String = "abc"
    
    func foo(value: T) { }
    
    convenience init(_ value: T, file: String = __FILE__, line: Int = __LINE__) {
        print("bar")
        self.init(file: file, line: line)
    }
    
    init(file: String = __FILE__, line: Int = __LINE__) {
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
        print(self.dynamicType)
    }
}

var a: Array<Reporter> = []
a.append(cint)
a.append(cstring)

for r in a {
    r.report()
}

//: [Next](@next)
