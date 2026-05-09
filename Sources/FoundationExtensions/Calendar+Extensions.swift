import Foundation

public extension Calendar {
    init(
        identifier: Calendar.Identifier,
        timeZone: TimeZone? = nil,
        locale: Locale? = nil
    ) {
        self.init(identifier: identifier)
        
        if let timeZone {
            self.timeZone = timeZone
        }
        
        if let locale {
            self.locale = locale
        }
    }
}
