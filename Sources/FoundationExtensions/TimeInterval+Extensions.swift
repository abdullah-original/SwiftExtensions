import Foundation

public extension TimeInterval {
    static func seconds(_ time: Double) -> TimeInterval {
        time
    }
    
    static func milliseconds(_ time: Double) -> TimeInterval {
        time / 1000
    }
    
    static func microseconds(_ time: Double) -> TimeInterval {
        time / 1000000
    }
    
    static func minutes(_ time: Double) -> TimeInterval {
        time * 60
    }
}
