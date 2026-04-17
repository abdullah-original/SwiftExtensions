import Foundation

public extension MeasurementFormatter {
    convenience init(
        unitStyle: UnitStyle,
        unitOptions: UnitOptions?,
        locale: Locale?,
        numberFormatter: NumberFormatter? = nil
    ) {
        self.init()
        self.unitStyle = unitStyle
        if let unitOptions {
            self.unitOptions = unitOptions
        }
        if let locale {
            self.locale = locale
        }
        if let numberFormatter {
            self.numberFormatter = numberFormatter
        }
    }
}
