import Foundation

@propertyWrapper
public struct UserDefaultsStore<Value: Codable> {
    private let key: String
    private let defaultValue: Value?
    private let storage: UserDefaults
    
    public init(
        wrappedValue defaultValue: Value? = nil,
        _ key: String,
        storage: UserDefaults = .standard
    ) {
        self.defaultValue = defaultValue
        self.key = key
        self.storage = storage
    }
    
    public var wrappedValue: Value? {
        get {
            let value = storage.object(forKey: key) as? Value
            return value ?? defaultValue
        }
        set {
            storage.set(newValue, forKey: key)
        }
    }
}
