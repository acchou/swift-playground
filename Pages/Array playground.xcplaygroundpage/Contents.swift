//: [Previous](@previous)

import Foundation

var a: [Int] = [1, 2, 3]

for value in a {
    debugPrint(value, terminator: ", ")
}
print("\n")

// Inferred types for arrays might be more generic than expected.
[1, 2, 3].dynamicType
[1, "2", [3.0]].dynamicType

let b = [1, "2", [3.0]]
(b[2] as! Array<Float>)[0]



// Arrays are value types! And Dictionaries too.
var xa = [0, 1, 2]
var xb = xa
xa[1]=42
xa.append(100)
xa
xb

// Misc String operations
var emptyList: [String] = []

emptyList.append("a")
emptyList.append("c")
emptyList.append("b")

emptyList.capacity
emptyList.contains("a")
emptyList.contains("c")
emptyList.count
emptyList.debugDescription
emptyList.description
emptyList.joinWithSeparator("-")
emptyList.sort()
emptyList.underestimateCount()

var d: [Int] = [42, 100, 45]
d.count
d.endIndex

//: [Next](@next)
