//: [Previous](@previous)

import Foundation

var hi = "Hi"
var nihao = "你好嗎"
var euro = "€"

Array(hi.utf8)

// Graphemes are accessible via the characters property. It is the user-visible "character"
let nhc = nihao.characters
String(nhc.dropLast())

let nh = nihao.utf8
Array(nh)

// Code units in UTF-8 are bytes. Code points are 1-6 code units.
nh.distance(from: nh.startIndex, to: nh.endIndex)
nihao.lengthOfBytes(using: String.Encoding.utf8)

var substrings = Array<String>()
// Operating on UTF-8 code units chops characters...
for i in 0...nh.count {
    print(i)
    let ch = String(nh.prefix(i))
    print(ch)
    // XXX This calls an unexpected String constructor...
    substrings.append(String(describing: nh.prefix(i)))
}
print(substrings)
print(substrings.debugDescription)

String(nh.prefix(0))
String(nh.prefix(1))
String(nh.prefix(2))
String(nh.prefix(3))
String(nh.prefix(4))
String(nh.prefix(5))
String(nh.prefix(6))
String(nh.prefix(7))
String(nh.prefix(8))
String(nh.prefix(9))

String(nh.prefix(100))

//: [Next](@next)
