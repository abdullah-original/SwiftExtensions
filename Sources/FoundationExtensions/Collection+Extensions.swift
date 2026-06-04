import Foundation

public extension Collection {
    func mapEmpty(_ fallback: Self) -> Self {
        self.isEmpty ? fallback : self
    }

    func mapEmpty(_ fallback: () -> Self) -> Self {
        self.mapEmpty(fallback())
    }
}
