//: [Previous](@previous)

import Foundation

let date = Date()
let formatter = DateFormatter()

//formatter.setLocalizedDateFormatFromTemplate(<#T##dateFormatTemplate: String##String#>)
formatter.timeStyle = .short
formatter.dateStyle = .short
formatter.string(from: date)


extension Foundation.Date {
    struct Date {
        static let formatterISO8601: DateFormatter = {
            let formatter = DateFormatter()
            formatter.calendar = Calendar(identifier: Calendar.Identifier.iso8601)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSX"
            return formatter
        }()
    }
    var formattedISO8601: String { return Date.formatterISO8601.string(from: self) }
}

Date().formattedISO8601

//: [Next](@next)
