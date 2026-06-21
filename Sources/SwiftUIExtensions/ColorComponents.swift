import SwiftUI

/// Workaround for Color since SwiftData doesn't support Color.
public struct ColorComponents: Sendable, Equatable, Codable {
    public let red: Double
    public let green: Double
    public let blue: Double
    public let opacity: Double
    
    public init(red: Double, green: Double, blue: Double, opacity: Double = 1) {
        self.red = red
        self.green = green
        self.blue = blue
        self.opacity = opacity
    }
    
    @available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
    public init(_ color: Color, environment: EnvironmentValues = .init()) {
        let color = color.resolve(in: environment)
        self.red = Double(color.red)
        self.green = Double(color.green)
        self.blue = Double(color.blue)
        self.opacity = Double(color.opacity)
    }
}

public extension Color {
    init(_ colorComponents: ColorComponents) {
        self.init(
            red: colorComponents.red,
            green: colorComponents.green,
            blue: colorComponents.blue,
            opacity: colorComponents.opacity
        )
    }
}
