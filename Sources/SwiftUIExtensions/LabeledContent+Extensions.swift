import SwiftUI

@available(iOS 16, macCatalyst 16, tvOS 16.0, watchOS 9.0, macOS 13, *)
public extension LabeledContent where Content == Text, Label == SwiftUI.Label<Text, Image> {
    init<S1, S2>(
        _ title: S1,
        value: S2,
        systemImageForTitle systemImage: String
    ) where S1 : StringProtocol, S2 : StringProtocol {
        self.init {
            Text(value)
        } label: {
            SwiftUI.Label(title, systemImage: systemImage)
        }
    }
    
    init<F>(
        _ titleKey: LocalizedStringKey,
        value: F.FormatInput,
        format: F,
        systemImageForTitle systemImage: String
    ) where F : FormatStyle, F.FormatInput : Equatable, F.FormatOutput == String {
        self.init {
            Text(value, format: format)
        } label: {
            SwiftUI.Label(titleKey, systemImage: systemImage)
        }
    }
    
    init(
        _ titleKey: LocalizedStringKey,
        value: LocalizedStringKey,
        systemImageForTitle systemImage: String
    ) {
        self.init {
            Text(value)
        } label: {
            SwiftUI.Label(titleKey, systemImage: systemImage)
        }
    }
    
    init<S: StringProtocol>(
        _ titleKey: LocalizedStringKey,
        value: S,
        systemImageForTitle systemImage: String
    ) {
        self.init {
            Text(value)
        } label: {
            SwiftUI.Label(titleKey, systemImage: systemImage)
        }
    }
}

@available(iOS 16, macCatalyst 16, tvOS 16.0, watchOS 9.0, macOS 13, *)
public extension LabeledContent where Label == Text, Content == SwiftUI.Label<Text, Image> {
    init<S1, S2>(
        _ title: S1,
        value: S2,
        systemImageForValue systemImage: String
    ) where S1 : StringProtocol, S2 : StringProtocol {
        self.init {
            SwiftUI.Label(value, systemImage: systemImage)
        } label: {
            Text(title)
        }
    }
    
    init<F>(
        _ titleKey: LocalizedStringKey,
        value: F.FormatInput,
        format: F,
        systemImageForValue systemImage: String
    ) where F : FormatStyle, F.FormatInput : Equatable, F.FormatOutput == String {
        self.init {
            SwiftUI.Label {
                Text(value, format: format)
            } icon: {
                Image(systemName: systemImage)
            }

        } label: {
            Text(titleKey)
        }
    }
    
    init(
        _ titleKey: LocalizedStringKey,
        value: LocalizedStringKey,
        systemImageForValue systemImage: String
    ) {
        self.init {
            SwiftUI.Label(value, systemImage: systemImage)
        } label: {
            Text(titleKey)
        }
    }
    
    init<S: StringProtocol>(
        _ titleKey: LocalizedStringKey,
        value: S,
        systemImageForValue systemImage: String
    ) {
        self.init {
            SwiftUI.Label(value, systemImage: systemImage)
        } label: {
            Text(titleKey)
        }
    }
}

@available(iOS 16, macCatalyst 16, tvOS 16.0, watchOS 9.0, macOS 13, *)
#Preview {
    let title = "Price"
    let localizedTitle = LocalizedStringKey(title)
    let price: Double = 125.5
    let format = FloatingPointFormatStyle<Double>.Currency.currency(code: "EUR")
    let localizedPrice = LocalizedStringKey(price.formatted(format))
    let image = "dollarsign.circle"
    
    VStack {
        LabeledContent(title, value: price.formatted(format), systemImageForTitle: image)
        
        LabeledContent(title, value: price.formatted(format), systemImageForValue: image)
        
        LabeledContent(localizedTitle, value: price, format: format, systemImageForTitle: image)
        
        LabeledContent(localizedTitle, value: price, format: format, systemImageForValue: image)
        
        LabeledContent(localizedTitle, value: localizedPrice, systemImageForTitle: image)
        
        LabeledContent(localizedTitle, value: localizedPrice, systemImageForValue: image)
        
        LabeledContent(localizedTitle, value: price.formatted(format), systemImageForTitle: image)
        
        LabeledContent(localizedTitle, value: price.formatted(format), systemImageForValue: image)
    }
    .frame(width: 500, height: 500)
}
