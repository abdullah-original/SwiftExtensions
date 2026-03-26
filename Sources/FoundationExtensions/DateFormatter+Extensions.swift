import Foundation

public extension DateFormatter {
    convenience init(
        dateStyle: DateFormatter.Style,
        timeStyle: DateFormatter.Style,
        calendar: Calendar = .current,
        locale: Locale? = nil,
        timeZone: TimeZone? = nil
    ) {
        self.init()
        self.dateStyle = dateStyle
        self.timeStyle = timeStyle
        self.calendar = calendar
        self.locale = locale ?? calendar.locale
        self.timeZone = timeZone ?? calendar.timeZone
    }
    
    convenience init(
        dateFormat: String,
        calendar: Calendar = .current,
        locale: Locale? = nil,
        timeZone: TimeZone? = nil
    ) {
        self.init()
        self.dateFormat = dateFormat
        self.calendar = calendar
        self.locale = locale ?? calendar.locale
        self.timeZone = timeZone ?? calendar.timeZone
    }
}
