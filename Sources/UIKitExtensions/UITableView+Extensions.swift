#if canImport(UIKit)
import UIKit

public extension UITableView {
    convenience init(
        delegate: UITableViewDelegate,
        dataSource: UITableViewDataSource,
        prefetchDataSource: UITableViewDataSourcePrefetching? = nil,
        registerCells: [UINib] = [],
        allowsSelection: Bool = false,
        style: UITableView.Style = .grouped,
        tableHeaderView: UIView? = nil,
        tableFooterView: UIView? = nil,
        backgroundColor: UIColor? = nil,
        backgroundView: UIView? = nil,
        sectionHeaderHeight: CGFloat? = nil,
        sectionFooterHeight: CGFloat? = nil,
        rowHeight: CGFloat? = nil,
        estimatedRowHeight: CGFloat? = nil,
        separatorStyle: UITableViewCell.SeparatorStyle = .singleLine,
        separatorColor: UIColor? = nil,
        separatorEffect: UIVisualEffect? = nil,
        separatorInset: UIEdgeInsets?,
        separatorInsetReference: UITableView.SeparatorInsetReference?,
        insetsContentViewsToSafeArea: Bool? = nil
    ) {

        self.init()
        self.prefetchDataSource = prefetchDataSource
        self.separatorStyle = separatorStyle
        self.dataSource = dataSource
        self.delegate = delegate
        self.allowsSelection = allowsSelection
        self.translatesAutoresizingMaskIntoConstraints = false
        self.tableHeaderView = tableHeaderView
        self.tableFooterView = tableFooterView
        
        if let rowHeight {
            self.rowHeight = rowHeight
        }
        
        if let estimatedRowHeight {
            self.estimatedRowHeight = estimatedRowHeight
        }
       
        if let backgroundColor {
            self.backgroundColor = backgroundColor
            self.backgroundView = nil
        } else if let backgroundView {
            self.backgroundView = backgroundView
        }
        
        if let separatorColor {
            self.separatorColor = separatorColor
        }
        
        if let separatorEffect {
            self.separatorEffect = separatorEffect
        }
                
        if let separatorInset {
            self.separatorInset = separatorInset
        }

        if let separatorInsetReference {
            self.separatorInsetReference = separatorInsetReference
        }
                
        if let sectionHeaderHeight {
            self.sectionHeaderHeight = sectionHeaderHeight
        }
        
        if let sectionFooterHeight {
            self.sectionFooterHeight = sectionFooterHeight
        }

        if let insetsContentViewsToSafeArea {
            self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        }
        
        // Batch register standard cells if provided
        registerCells.forEach { cellClass in
            self.register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
        }
    }
}
#endif
