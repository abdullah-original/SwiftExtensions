#if canImport(UIKit)
import UIKit

public extension UIDatePicker {
    convenience init(
        date: Date? = nil,
        minimumDate: Date? = nil,
        maximumDate: Date? = nil,
        minuteInterval: Int? = nil,
        mode: UIDatePicker.Mode? = nil,
        preferredStyle: UIDatePickerStyle? = nil
    ) {
        self.init()
        if let mode { self.datePickerMode = mode }
        if let preferredStyle { self.preferredDatePickerStyle = preferredStyle }
        if let minimumDate { self.minimumDate = minimumDate }
        if let maximumDate { self.maximumDate = maximumDate }
        if let minuteInterval { self.minuteInterval = minuteInterval }
        if let date { self.date = date }
    }
    
    /// Use when a count down timer is required. It automatically sets the `datePickerMode` to `.countDownTimer`.
    convenience init(
        countDownDuration: TimeInterval? = nil,
        preferredStyle: UIDatePickerStyle? = nil
    ) {
        self.init()
        self.datePickerMode = .countDownTimer
        if let countDownDuration {
            self.countDownDuration = countDownDuration
        }
    }
}
#endif
