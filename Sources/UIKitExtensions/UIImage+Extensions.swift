#if canImport(UIKit)
import UIKit
import FoundationExtensions

public extension UIImage {
    static func appIcon(in bundle: Bundle) -> UIImage {
        UIImage(named: bundle.appIcon)!
    }
}

#endif
