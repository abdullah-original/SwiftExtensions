import Foundation

public extension Set {
    static func + <Other>(lhs: Self, rhs: Other) -> Self where Other : Sequence, Self.Element == Other.Element {
        lhs.union(rhs)
    }
}
