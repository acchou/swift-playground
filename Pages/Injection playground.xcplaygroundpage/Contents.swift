//: [Previous](@previous)

import Foundation

/// Example of dependency injection that doesn't compile in case of initializer
protocol Injected { }
extension Injected {
    var field: Int { return 42 }
}

class C: Injected {
    var x: Int

    init() {
        self.x = field  // error: use of 'self' in property access 'field' before all stored properties are initialized
    }
}
//: [Next](@next)
