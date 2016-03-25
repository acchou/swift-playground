//: [Previous](@previous)

import Foundation

let date = NSDate()
let formatter = NSDateFormatter()

//formatter.setLocalizedDateFormatFromTemplate(<#T##dateFormatTemplate: String##String#>)
formatter.timeStyle = .ShortStyle
formatter.dateStyle = .ShortStyle
formatter.stringFromDate(date)


extension NSDate {
    struct Date {
        static let formatterISO8601: NSDateFormatter = {
            let formatter = NSDateFormatter()
            formatter.calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierISO8601)
            formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
            formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSX"
            return formatter
        }()
    }
    var formattedISO8601: String { return Date.formatterISO8601.stringFromDate(self) }
}

NSDate().formattedISO8601

//: [Next](@next)
