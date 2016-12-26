//: [Previous](@previous)

import Foundation

var str: String? = "hello"

// Assign through optionals.
str = "there"

var doubleopt: String?? = "wow"
doubleopt = "wow wow"
type(of: doubleopt)

if let single = doubleopt {
    type(of: single)
    if let str = single {
        type(of: str)
    }
}

// Swift allows assignment through optionals...

var avar : Int?

avar = 0
avar! = 42
avar
avar = 176
avar

var bvar : String?
bvar = "hello"
bvar! = "there"
bvar

var cvar : Int??
cvar = 0
cvar
cvar!
cvar! = 42
print(cvar)
print(cvar!)
print(cvar!!)

// Using Optional directly
var optAddress : String? = "4 Market St, San Francisco, CA"
var optName = Optional.some("Andy")

if let name = optName, let address = optAddress {
    print (name, address)
}

// Special constructs for optionals
if let name = optName, name.hasPrefix("A"), let address = optAddress, address.hasPrefix("4") {
    print("\"\(name)\" begins with A and \"\(address)'\" begins with 4")
}

switch optName {
case let n:
    print("name: \(n)")
}

switch optAddress {
case nil:
    print("address is nil")
case let x where x!.hasPrefix("4"):
    print("\"\(x)\" begins with 4")
default:
    print("default: \(optAddress)")
}


//: [Next](@next)
