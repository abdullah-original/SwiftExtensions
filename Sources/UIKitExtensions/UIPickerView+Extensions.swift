#if canImport(UIKit)
import UIKit

public extension UIPickerView {
    convenience init(dataSource: UIPickerViewDataSource, delegate: UIPickerViewDelegate) {
        self.init()
        self.dataSource = dataSource
        self.delegate = delegate
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

#endif
