import Foundation

public extension Optional where Wrapped: RangeReplaceableCollection {
    /// Inserts an element into the collection.
    /// If the collection is nil, it initializes a new one first.
    @discardableResult
    mutating func insert(_ element: Wrapped.Element) -> Self {
        // If nil, initialize with an empty collection of the Wrapped type
        if self == nil {
            self = .some(Wrapped())
        }

        self?.append(element)
        return self
    }
}
