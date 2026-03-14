import Foundation

public extension UserDefaults {
    @_disfavoredOverload
    func object<T: Codable>(forKey key: String) -> T? {
        guard let saved = data(forKey: key), let decoded = try? PropertyListDecoder().decode(T.self, from: saved) else {
            return nil
        }
        return decoded
    }
    
    @_disfavoredOverload
    func set<T: Codable>(_ value: T?, forKey key: String) {
        if let encoded = try? PropertyListEncoder().encode(value) {
            set(encoded, forKey: key)
        }
    }
}
