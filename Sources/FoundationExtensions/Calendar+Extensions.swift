import Foundation

public extension Calendar {
    init(
        identifier: Calendar.Identifier,
        timeZone: TimeZone,
        locale: Locale? = nil
    ) {
        self.init(identifier: identifier)

        self.timeZone = timeZone

        if let locale {
            self.locale = locale
        }
    }
    
    static func current(withTimeZone timeZone: TimeZone) -> Calendar {
        var calendar = Calendar.current
        calendar.timeZone = timeZone
        return calendar
    }
}
