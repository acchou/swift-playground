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

var array = [0, 1, 2] {
    didSet {
        print("array didSet: ", array)
    }
}

array.append(42)

//: [Next](@next)
