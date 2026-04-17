import Foundation

public extension PersonNameComponentsFormatter {
    convenience init(
        style: PersonNameComponentsFormatter.Style,
        isPhonetic: Bool? = nil
    ) {
        self.init()
        self.style = style

        if let isPhonetic {
            self.isPhonetic = isPhonetic
        }
    }
    
    
    @available(iOS 15, macOS 12, tvOS 15, watchOS 8, macCatalyst 15,  *)
    convenience init(
        style: PersonNameComponentsFormatter.Style,
        isPhonetic: Bool? = nil,
        locale: Locale? = nil
    ) {
        self.init(style: style, isPhonetic: isPhonetic)

        if let locale {
            self.locale = locale
        }
    }
}
