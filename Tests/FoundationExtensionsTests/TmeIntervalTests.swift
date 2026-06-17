import Foundation
import Testing
@testable import FoundationExtensions

@Suite
struct TimeIntervalExtensionsTests {
    @Test
    func seconds() {
        #expect(TimeInterval.seconds(10) == 10)
    }
    
    @Test
    func milliseconds() {
        #expect(TimeInterval.milliseconds(5000) == 5)
        #expect(TimeInterval.milliseconds(5500) == 5.5)
    }
    
    @Test
    func microseconds() {
        #expect(TimeInterval.microseconds(3500000) == 3.5)
    }
    
    @Test
    func minutes() {
        #expect(TimeInterval.minutes(2) == 120)
        #expect(TimeInterval.minutes(2.25) == 135)
    }
}
