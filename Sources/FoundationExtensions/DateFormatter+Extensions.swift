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
        self.locale = if let locale { locale } else { calendar.locale }
        self.timeZone = if let timeZone { timeZone } else { calendar.timeZone }
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
        self.locale = if let locale { locale } else { calendar.locale }
        self.timeZone = if let timeZone { timeZone } else { calendar.timeZone }
    }
}
