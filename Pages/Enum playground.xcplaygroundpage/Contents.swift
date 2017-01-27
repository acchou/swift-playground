//: [Previous](@previous)

import Foundation

// Using enums.
enum CustomerType {
    case suspect, prospect, customer, renewal, former
    
    func description() -> String {
        switch self {
        case .suspect: return "Suspect"
        case .prospect: return "Prospect"
        case .customer: return "Customer"
        case .renewal: return "Renewal"
        case .former: return "Former"
        }
    }
}

var ctype = CustomerType.prospect
ctype.description()

// Some enums from Obj-C have different conversion to String behavior.

enum qosType: Int {
    case high
    case medium
    case low
}

let high = qosType.high
print(high)

let background = QualityOfService.background
print(background)

@available(iOS 8.0, *)
public enum MyQualityOfService : Int {
    case userInteractive
    case userInitiated
    case utility
    case background
    case `default`
}

let bg = MyQualityOfService.background
print(bg)

// Enumerations can have associated values
enum Associated {
    case int(Int)
    case string(String)
    case foo(Int, String)
    case bar(x:Int, y:Int)
}

let a: Associated = .bar(x: 0, y: 20)
let b: Associated = .int(42)
let c: Associated = .bar(x: 10, y: 12)
a

enum RxError: Error {
    case other
    case timeout
}

enum OtherError: Error {
    case someError
    case intError(Int)
}

func testEnum(error: Error) {
    if case RxError.timeout = error {
        print("timeout")
    } else {
        print("not timeout")
    }
}

testEnum(error: RxError.timeout)
testEnum(error: OtherError.someError)
testEnum(error: OtherError.intError(100))

//: [Next](@next)
