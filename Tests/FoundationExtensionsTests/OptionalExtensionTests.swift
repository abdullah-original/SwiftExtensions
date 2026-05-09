import Testing
import Foundation
@testable import FoundationExtensions

@Suite
struct OptionalExtensionTests {
    @Test
    func insert_shouldInitalize_andInsertNewElement() {
        var optional: [String]? = nil
        
        optional.insert("Hello")
        
        #expect(optional == ["Hello"])
    }
    
    @Test
    func insert_shouldInsertNewElement() {
        var optional: [String]? = ["Hello"]
        
        optional.insert("World")
        
        #expect(optional == ["Hello", "World"])
    }
}
