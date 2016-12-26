//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
var str2 = "there is another"

let a = [str, str2]

let data = str.data(using: String.Encoding.utf8)
let data2 = str2.data(using: String.Encoding.utf8)

JSONSerialization.isValidJSONObject(a)
let json = try! JSONSerialization.data(withJSONObject: a, options: JSONSerialization.WritingOptions.prettyPrinted)
let objs = try! JSONSerialization.jsonObject(with: json, options: JSONSerialization.ReadingOptions.mutableContainers)

let array = objs as! [String]
print(array)

//: [Next](@next)
