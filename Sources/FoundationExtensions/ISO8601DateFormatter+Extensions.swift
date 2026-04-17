import Foundation

public extension ISO8601DateFormatter {
    convenience init(
        formatOptions: ISO8601DateFormatter.Options,
        timeZone: TimeZone? = nil
    ) {
        self.init()
        self.formatOptions = formatOptions
        if let timeZone {
            self.timeZone = timeZone
        }
    }
}
