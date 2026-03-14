import Foundation
import Testing
@testable import FoundationExtensions

@Suite
struct DictionaryExtensionTests {
    @Test
    func plus_shouldKeepRHSKeys() {
        let lhs = ["a": 1, "b": 2]
        let rhs = ["b": 3, "c": 4]
        
        let result = lhs + rhs
        let expected = ["a": 1, "b": 3, "c": 4]
        
        #expect(result == expected)
    }
    
    @Test
    func plusEquals_shouldKeepRHSKeys() {
        var lhs = ["a": 1, "b": 2]
        let rhs = ["b": 3, "c": 4]
        
        lhs += rhs
        let expected = ["a": 1, "b": 3, "c": 4]
        
        #expect(lhs == expected)
    }
}
