//: [Previous](@previous)

import Foundation

var v: Int = 0 {
    didSet {
        print("didSet: ", oldValue)
    }

    willSet {
        print("willSet: ", newValue)
    }
}

v = 1
v = 42



//: [Next](@next)
