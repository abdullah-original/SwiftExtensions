import Foundation

public extension DateIntervalFormatter {
    convenience init(
        dateStyle: DateIntervalFormatter.Style,
        timeStyle: DateIntervalFormatter.Style,
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
        dateTemplate: String,
        calendar: Calendar = .current,
        locale: Locale? = nil,
        timeZone: TimeZone? = nil
    ) {
        self.init()
        self.dateTemplate = dateTemplate
        self.calendar = calendar
        self.locale = locale ?? calendar.locale
        self.timeZone = timeZone ?? calendar.timeZone
    }
}
