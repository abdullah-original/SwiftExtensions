import Foundation
import SwiftUI
import XCTest
@testable import SwiftUIExtensions

@available(iOS 17, macCatalyst 17, tvOS 17, watchOS 10, macOS 14, *)
final class ColorComponentsTests: XCTestCase {

    func test_init_withColor() {
        let color = Color(red: 67, green: 189, blue: 233, opacity: 0.7)
        
        let sut = ColorComponents(color)
        
        XCTAssertEqual(sut.red, 67.0, accuracy: 0.01)
        XCTAssertEqual(sut.green, 189.0, accuracy: 0.01)
        XCTAssertEqual(sut.blue, 233.0, accuracy: 0.01)
        XCTAssertEqual(sut.opacity, 0.7, accuracy: 0.01)
    }
    
    func test_init_withColorComponents() {
        let color = ColorComponents(red: 67, green: 189, blue: 233, opacity: 0.7)
        
        let sut = Color(color).resolve(in: .init())
        
        XCTAssertEqual(sut.red, 67.0, accuracy: 0.01)
        XCTAssertEqual(sut.green, 189.0, accuracy: 0.01)
        XCTAssertEqual(sut.blue, 233.0, accuracy: 0.01)
        XCTAssertEqual(sut.opacity, 0.7, accuracy: 0.01)
    }
}
