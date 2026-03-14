import Foundation
import Testing
@testable import FoundationExtensions

@Suite
final class UserDefaultsStoreTests {
    
    private let keys = ["testKey", "testKey2", "testKey3"]
    
    deinit {
        keys.forEach(UserDefaults.standard.removeObject(forKey:))
    }
    
    @Test
    func object_shouldReturnDefaultValue_whenObjectIsNotSet() {
        @UserDefaultsStore(self.keys[0]) var output: String? = "Hello, World!"
        
        #expect(output == "Hello, World!")
    }
    
    @Test
    func object_shouldReturnStoredValue() {
        @UserDefaultsStore(self.keys[1]) var output: Int? = 0
        
        output = 42
        
        #expect(output == 42)
    }
}
