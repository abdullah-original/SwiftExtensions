#if canImport(UIKit)
import UIKit

public extension UIButton {
    convenience init(
        title: String,
        image: UIImage? = nil,
        action: UIAction,
        type: UIButton.ButtonType? = nil,
        role: UIButton.Role? = nil
    ) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setImage(image, for: .normal)
        if let role {
            self.role = role
        }
        if let type {
            self.init(type: type, primaryAction: action)
        } else {
            self.init(primaryAction: action)
        }
    }
    
    convenience init(
        title: String,
        image: UIImage? = nil,
        target: Any?,
        selector: Selector,
        controlEvents: UIControl.Event,
        role: UIButton.Role? = nil
    ) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setImage(image, for: .normal)
        if let role {
            self.role = role
        }
        self.addTarget(target, action: selector, for: controlEvents)
    }
    
    convenience init(
        title: String = "",
        image: UIImage,
        action: UIAction,
        type: UIButton.ButtonType? = nil,
        role: UIButton.Role? = nil
    ) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setImage(image, for: .normal)
        if let role {
            self.role = role
        }
        if let type {
            self.init(type: type, primaryAction: action)
        } else {
            self.init(primaryAction: action)
        }
    }
    
    convenience init(
        attributedTitle: NSAttributedString,
        image: UIImage? = nil,
        action: UIAction,
        type: UIButton.ButtonType? = nil,
        role: UIButton.Role? = nil
    ) {
        self.init()
        self.setAttributedTitle(attributedTitle, for: .normal)
        self.setImage(image, for: .normal)
        if let role {
            self.role = role
        }
        if let type {
            self.init(type: type, primaryAction: action)
        } else {
            self.init(primaryAction: action)
        }
    }
    
    convenience init(
        attributedTitle: NSAttributedString,
        image: UIImage? = nil,
        target: Any?,
        selector: Selector,
        controlEvents: UIControl.Event,
        role: UIButton.Role? = nil
    ) {
        self.init()
        self.setAttributedTitle(attributedTitle, for: .normal)
        self.setImage(image, for: .normal)
        if let role {
            self.role = role
        }
        self.addTarget(target, action: selector, for: controlEvents)
    }
}

@available(iOS 15, tvOS 15, macCatalyst 15, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public extension UIButton {
    convenience init(
        title: String,
        image: UIImage? = nil,
        action: UIAction,
        type: UIButton.ButtonType? = nil,
        role: UIButton.Role? = nil,
        configuration: UIButton.Configuration? = nil
    ) {
        self.init(title: title, image: image, action: action, type: type, role: role)
        if let configuration {
            self.configuration = configuration
        }
    }
    
    convenience init(
        title: String,
        image: UIImage? = nil,
        target: Any?,
        selector: Selector,
        controlEvents: UIControl.Event,
        role: UIButton.Role? = nil,
        configuration: UIButton.Configuration? = nil
    ) {
        self.init(title: title, image: image, target: target, selector: selector, controlEvents: controlEvents)
        if let configuration {
            self.configuration = configuration
        }
    }
    
    convenience init(
        title: String = "",
        image: UIImage,
        action: UIAction,
        type: UIButton.ButtonType? = nil,
        role: UIButton.Role? = nil,
        configuration: UIButton.Configuration? = nil
    ) {
        self.init(title: title, image: image, action: action, type: type, role: role)
        if let configuration {
            self.configuration = configuration
        }
    }
    
    convenience init(
        attributedTitle: NSAttributedString,
        image: UIImage? = nil,
        action: UIAction,
        type: UIButton.ButtonType? = nil,
        role: UIButton.Role? = nil,
        configuration: UIButton.Configuration? = nil
    ) {
        self.init(attributedTitle: attributedTitle, image: image, action: action, type: type, role: role)
        if let configuration {
            self.configuration = configuration
        }
    }
    
    convenience init(
        attributedTitle: NSAttributedString,
        image: UIImage? = nil,
        target: Any?,
        selector: Selector,
        controlEvents: UIControl.Event,
        role: UIButton.Role? = nil,m
        configuration: UIButton.Configuration? = nil
    ) {
        self.init(attributedTitle: attributedTitle, image: image, target: target, selector: selector, controlEvents: controlEvents, role: role)
        if let configuration {
            self.configuration = configuration
        }
    }
    
}
#endif
