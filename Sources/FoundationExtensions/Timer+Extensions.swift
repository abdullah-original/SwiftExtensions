import Foundation

public extension Timer {
    convenience init(
        withTimeInterval interval: TimeInterval,
        tolerance: TimeInterval,
        repeats: Bool,
        block: @escaping @Sendable (Timer) -> Void
    ) {
        self.init(
            timeInterval: interval,
            repeats: repeats,
            block: block
        )
        self.tolerance = tolerance
    }
    
    
    class func scheduledTimer(
        withTimeInterval interval: TimeInterval,
        tolerance: TimeInterval,
        repeats: Bool,
        block: @escaping @Sendable (Timer) -> Void
    ) -> Timer {
        let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: repeats, block: block)
        timer.tolerance = tolerance
        return timer
    }
    
}
