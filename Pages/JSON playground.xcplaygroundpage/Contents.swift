//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
var str2 = "there is another"

let a = [str, str2]

let data = str.dataUsingEncoding(NSUTF8StringEncoding)
let data2 = str2.dataUsingEncoding(NSUTF8StringEncoding)

NSJSONSerialization.isValidJSONObject(a)
let json = try! NSJSONSerialization.dataWithJSONObject(a, options: NSJSONWritingOptions.PrettyPrinted)
let objs = try! NSJSONSerialization.JSONObjectWithData(json, options: NSJSONReadingOptions.MutableContainers)

let array = objs as! [String]
print(array)

//: [Next](@next)
