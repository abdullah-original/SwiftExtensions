import Foundation
import Testing
import FoundationExtensions

@Suite
struct CollectionExtensionTests {
    @Test
    func mapEmpty_string() {
        let emptyString = ""
        
        let expectedResult = "Hello World"
        
        #expect(emptyString.mapEmpty(expectedResult) == expectedResult)
    }
    
    @Test
    func mapEmpty_array() {
        let emptyArray = [Int]()
        
        let expectedResult = [1, 2]
        
        #expect(emptyArray.mapEmpty(expectedResult) == expectedResult)
    }
    
    @Test
    func mapEmpty_closure_array() {
        let emptyArray = [Int]()
        
        let expectedResult = [1, 2]
        
        #expect(emptyArray.mapEmpty { expectedResult } == expectedResult)
    }
}
