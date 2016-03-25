//: [Previous](@previous)

import Foundation

// Using enums.
enum CustomerType {
    case Suspect, Prospect, Customer, Renewal, Former
    
    func description() -> String {
        switch self {
        case .Suspect: return "Suspect"
        case .Prospect: return "Prospect"
        case .Customer: return "Customer"
        case .Renewal: return "Renewal"
        case .Former: return "Former"
        }
    }
}

var ctype = CustomerType.Prospect
ctype.description()

// Some enums from Obj-C have different conversion to String behavior.

enum qosType: Int {
    case High
    case Medium
    case Low
}

let high = qosType.High
print(high)

let background = NSQualityOfService.Background
print(background)

@available(iOS 8.0, *)
public enum MyQualityOfService : Int {
    case UserInteractive
    case UserInitiated
    case Utility
    case Background
    case Default
}

let bg = MyQualityOfService.Background
print(bg)



//: [Next](@next)
