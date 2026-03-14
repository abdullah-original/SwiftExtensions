#if canImport(UIKit)
import UIKit

public extension UIRefreshControl {
    convenience init(
        _ target: Any?,
        action: Selector,
        for event: UIControl.Event,
        tintColor: UIColor? = nil,
        attributedTitle: NSAttributedString? = nil
    ) {
        self.init()
        self.addTarget(target, action: action, for: event)
        if let tintColor = tintColor {
            self.tintColor = tintColor
        }
        if let attributedTitle = attributedTitle {
            self.attributedTitle = attributedTitle
        }
    }
}
#endif
