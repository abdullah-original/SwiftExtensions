import Foundation

public extension DateInterval {
    /// A convenience function to give the same API as [`Date.formatted(_:)`](https://developer.apple.com/documentation/foundation/date/formatted(_:)),
    /// however because initialization of formatters is expensive,
    /// it is recommend instead to use [`Text(_:formatter:)`](https://developer.apple.com/documentation/swiftui/text/init(_:formatter:)) instead and supply the formatter directly.
    func formatted(dateStyle: DateIntervalFormatter.Style, timeStyle: DateIntervalFormatter.Style) -> String {
        let formatter = DateIntervalFormatter(dateStyle: dateStyle, timeStyle: timeStyle)
        return formatter.string(from: self) ?? ""
    }
}
