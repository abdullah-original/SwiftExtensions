import SwiftUI

public extension LocalizedStringKey {
    var key: String {
        (Mirror(reflecting: self).descendant("key") as? String) ?? ""
    }
    
    var isEmpty: Bool {
        key.isEmpty
    }
}
