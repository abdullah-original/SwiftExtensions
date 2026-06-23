import Foundation
import Testing
@testable import FoundationExtensions

@Suite(.serialized)
final class UserDefaultsStoreTests {
    
    private let keys = ["testKey", "testKey2"]
    
    deinit {
        keys.forEach(UserDefaults.standard.removeObject(forKey:))
    }
    
    @Test
    func object_shouldReturnDefaultValue_whenObjectIsNotSet() {
        @UserDefaultsStore(self.keys[0]) var output: String? = "Hello, World!"
        
        #expect(output == "Hello, World!")
        #expect(UserDefaults.standard.string(forKey: self.keys[0]) == nil)
    }
    
    @Test
    func object_shouldReturnStoredValue() {
        @UserDefaultsStore(self.keys[1]) var output: Int? = 0
        
        output = 42
        
        #expect(output == 42)
        #expect(UserDefaults.standard.integer(forKey: self.keys[1]) == 42)
    }
}
