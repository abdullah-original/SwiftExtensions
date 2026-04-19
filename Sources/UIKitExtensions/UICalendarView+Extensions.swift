#if canImport(UIKit)
import UIKit

@available(iOS 16, macCatalyst 16, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
public extension UICalendarView {
    convenience init(
        delegate: UICalendarViewDelegate,
        selectionBehavior: UICalendarSelection? = nil,
        availableDateRange: DateInterval? = nil,
        visibleDateComoponents: DateComponents? = nil,
        wantsDateDecorations: Bool = true,
        fontDesign: UIFontDescriptor.SystemDesign? = nil,
        calendar: Calendar? = nil,
        timeZone: TimeZone? = nil,
        locale: Locale? = nil
    ) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.delegate = delegate
        self.wantsDateDecorations = wantsDateDecorations
        if let availableDateRange {
            self.availableDateRange = availableDateRange
        }
        
        if let visibleDateComoponents {
            self.setVisibleDateComponents(visibleDateComoponents, animated: true)
        }
        
        if let selectionBehavior {
            self.selectionBehavior = selectionBehavior
        }
        
        if let fontDesign {
            self.fontDesign = fontDesign
        }
        
        if let calendar {
            self.calendar = calendar
            if timeZone == nil {
                self.timeZone = calendar.timeZone
            }
            if locale == nil, let calendarLocale = calendar.locale {
                self.locale = calendarLocale
            }
        }
        
        if let timeZone {
            self.timeZone = timeZone
        }
        
        if let locale {
            self.locale = locale
        }
    }
}

#endif
