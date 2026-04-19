#if canImport(UIKit)
import UIKit

public extension UILabel {
    /// String text.
    convenience init(
        text: String,
        font: UIFont? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment = .natural,
        lineBreakMode: NSLineBreakMode = .byTruncatingTail,
        lineBreakStrategy: NSParagraphStyle.LineBreakStrategy = .standard,
        isEnabled: Bool = true,
        showsExpansionTextWhenTruncated: Bool = false,
        adjustsFontSizeToFitWidth: Bool = false,
        allowsDefaultTighteningForTruncation: Bool = false,
        baselineAdjustment: UIBaselineAdjustment? = nil,
        minimumScaleFactor: CGFloat = .zero,
        numberOfLines: Int = 1,
        highlightedTextColor: UIColor? = nil,
        isHighlighted: Bool = false,
        shadowColor: UIColor? = nil,
        shadowOffset: CGSize? = nil,
        preferredMaxLayoutWidth: CGFloat? = nil,
        isUserInteractionEnabled: Bool? = nil
    ) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.lineBreakMode = lineBreakMode
        self.lineBreakStrategy = lineBreakStrategy
        self.isEnabled = isEnabled
        self.showsExpansionTextWhenTruncated = showsExpansionTextWhenTruncated
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        if let baselineAdjustment { self.baselineAdjustment = baselineAdjustment }
        self.minimumScaleFactor = minimumScaleFactor
        self.highlightedTextColor = highlightedTextColor
        self.isHighlighted = isHighlighted
        self.numberOfLines = numberOfLines
        self.shadowColor = shadowColor
        if let shadowOffset {  self.shadowOffset = shadowOffset }
        if let preferredMaxLayoutWidth { self.preferredMaxLayoutWidth = preferredMaxLayoutWidth }
        if let isUserInteractionEnabled { self.isUserInteractionEnabled = isUserInteractionEnabled }
    }
    
    /// Attributed text.
    convenience init(
        attributedText: NSAttributedString,
        isEnabled: Bool = true,
        showsExpansionTextWhenTruncated: Bool = false,
        adjustsFontSizeToFitWidth: Bool = false,
        allowsDefaultTighteningForTruncation: Bool = false,
        baselineAdjustment: UIBaselineAdjustment? = nil,
        minimumScaleFactor: CGFloat = .zero,
        numberOfLines: Int = 1,
        highlightedTextColor: UIColor? = nil,
        isHighlighted: Bool = false,
        shadowColor: UIColor? = nil,
        shadowOffset: CGSize? = nil,
        preferredMaxLayoutWidth: CGFloat? = nil,
        isUserInteractionEnabled: Bool? = nil
    ) {
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.isEnabled = isEnabled
        self.showsExpansionTextWhenTruncated = showsExpansionTextWhenTruncated
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        if let baselineAdjustment { self.baselineAdjustment = baselineAdjustment }
        self.minimumScaleFactor = minimumScaleFactor
        self.highlightedTextColor = highlightedTextColor
        self.isHighlighted = isHighlighted
        self.numberOfLines = numberOfLines
        self.shadowColor = shadowColor
        if let shadowOffset {  self.shadowOffset = shadowOffset }
        if let preferredMaxLayoutWidth { self.preferredMaxLayoutWidth = preferredMaxLayoutWidth }
        if let isUserInteractionEnabled { self.isUserInteractionEnabled = isUserInteractionEnabled }
    }
}

#endif
