import Testing
import Foundation
@testable import FoundationExtensions

@Suite
struct SetExtensionTests {
    @Test
    func plus() {
        let set: Set<Int> = [1, 2, 3]
        let set2: Set<Int> = [2, 3, 4]
        let result: Set<Int> = [1, 2, 3, 4]
        #expect((set + set2) == result)
    }
    
    @Test
    func plusEquals() {
        var set: Set<Int> = [1, 2, 3]
        let set2: Set<Int> = [2, 3, 4]
        let result: Set<Int> = [1, 2, 3, 4]
        
        set += set2
        print(set)
        #expect(set == result)
    }
}
