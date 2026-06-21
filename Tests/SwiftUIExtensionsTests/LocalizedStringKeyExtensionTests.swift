import SwiftUI
import Testing
@testable import SwiftUIExtensions

@Suite
struct LocalizedStringKeyExtensionTests {
    @Test
    func key() {
        let key: LocalizedStringKey = "Hello, World!"
        
        #expect(key.key == "Hello, World!")
    }
    
    @Test
    func empty() {
        #expect(LocalizedStringKey("Hello, World!").isEmpty == false)
        #expect(LocalizedStringKey("").isEmpty == true)
    }
}
