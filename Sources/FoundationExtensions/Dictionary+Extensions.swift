import Foundation

public extension Dictionary {
    /// Merges two dictionaries, and keeps keeps from right hand side dictionary in case of key clashes.
    static func + (lhs: Self, rhs: Self) -> Self {
        lhs.merging(rhs) { $1 }
    }
    
    /// Merges two dictionaries in place, and keeps keeps from right hand side dictionary in case of key clashes.
    static func += (lhs: inout Self, rhs: Self) {
        lhs.merge(rhs) { $1 }
    }
}
