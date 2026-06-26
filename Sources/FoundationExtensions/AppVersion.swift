import Foundation

/// Encapsulation of [Semantic Version](https://semver.org/).
public struct AppVersion: Sendable, Equatable, Hashable {
    public let majorVersion: Int
    public let minorVersion: Int?
    public let patchVersion: Int?
    
    init(majorVersion: Int, minorVersion: Int? = nil, patchVersion: Int? = nil) {
        self.majorVersion = majorVersion
        self.minorVersion = minorVersion
        self.patchVersion = patchVersion
    }
    
    init?(from string: String) {
        let components = string.split(separator: ".").map(String.init).compactMap(Int.init)
        
        guard components.count >= 1, let majorVersion = components.first else {
            return nil
        }
        
        self.init(
            majorVersion: majorVersion,
            minorVersion: components.count > 1 ? components[1] : nil,
            patchVersion: components.count > 2 ? components[2] : nil
        )
    }
    
    public static func current(in bundle: Bundle = .main) -> Self? {
        guard let version = bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String else {
            return nil
        }

        return Self.init(from: version)
    }
}

extension AppVersion: CustomStringConvertible {
    public var description: String {
        [majorVersion, minorVersion, patchVersion].compactMap { $0.map(String.init) }.joined(separator: ".")
    }
}

extension AppVersion: Comparable {
    public static func < (lhs: AppVersion, rhs: AppVersion) -> Bool {
        lhs.description.compare(rhs.description, options: .numeric) == .orderedAscending
    }
}
