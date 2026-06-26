import SwiftUI
import FoundationExtensions
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

public extension Image {
    init?(data: Data) {
#if canImport(UIKit)
        if let uiImage = UIImage(data: data) {
            self.init(uiImage: uiImage)
        } else {
            return nil
        }
#elseif canImport(AppKit)
        if let nsImage = NSImage(data: data) {
            self.init(nsImage: nsImage)
        } else {
            return nil
        }
#else
        return nil
#endif
    }
}

public extension Image {
    static func appIcon(in bundle: Bundle = .main) -> Image {
#if canImport(UIKit)
        Image(uiImage: UIImage(named: bundle.appIcon)!)
#elseif canImport(AppKit)
        Image(nsImage: NSImage(named: bundle.appIcon)!)
#endif
    }
}

