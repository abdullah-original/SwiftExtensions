import Foundation

public extension RelativeDateTimeFormatter {
    convenience init(
        dateTimeStyle: DateTimeStyle,
        unitsStyle: UnitsStyle,
        formattingContext: RelativeDateTimeFormatter.Context?,
        calendar: Calendar?,
        locale: Locale?
    ) {
        self.init()
        self.dateTimeStyle = dateTimeStyle
        self.unitsStyle = unitsStyle
        if let formattingContext {
            self.formattingContext = formattingContext
        }
        if let calendar {
            self.calendar = calendar
        }
        if let locale {
            self.locale = locale
        }
    }
}
