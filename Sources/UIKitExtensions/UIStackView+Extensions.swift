#if canImport(UIKit)
import UIKit

public extension UIStackView {
    convenience init(
        arrangedSubviews: [UIView],
        axis: NSLayoutConstraint.Axis? = nil,
        alignment: UIStackView.Alignment? = nil,
        distribution: UIStackView.Distribution? = nil,
        spacing: CGFloat? = nil,
        isBaselineRelativeArrangement: Bool? = nil,
        isLayoutMarginsRelativeArrangement: Bool? = nil
    ) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.translatesAutoresizingMaskIntoConstraints = false
        if let axis { self.axis = axis }
        if let alignment { self.alignment = alignment }
        if let distribution { self.distribution = distribution }
        if let spacing { self.spacing = spacing }
        if let isBaselineRelativeArrangement {
            self.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        }
        if let isLayoutMarginsRelativeArrangement {
            self.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        }
    }
}
#endif
