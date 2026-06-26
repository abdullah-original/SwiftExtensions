import Foundation

public extension Bundle {
    var appIcon: String {
        guard
            let icons = self.object(forInfoDictionaryKey: "CFBundleIcons") as? [String: Any],
            let primaryIcon = icons["CFBundlePrimaryIcon"] as? [String: Any],
            let iconFiles = primaryIcon["CFBundleIconFiles"] as? [String],
            let iconFileName = iconFiles.last
        else {
            fatalError("Could not find icons in bundle")
        }
        
        return iconFileName
    }
}
