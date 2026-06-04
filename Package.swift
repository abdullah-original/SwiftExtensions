// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "SwiftExtensions",
    platforms: [.iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14), .watchOS(.v7)],
    products: [
        .library(
            name: "SwiftExtensions",
            targets: [
                "FoundationExtensions",
                "UIKitExtensions",
                "SwiftUIExtensions",
                "QuickLookExtensions",
                "PDFKitExtensions"
            ]
        ),
    ],
    targets: [
        .target(
            name: "FoundationExtensions",
            path: "Sources/FoundationExtensions"
        ),
        .target(
            name: "UIKitExtensions",
            path: "Sources/UIKitExtensions"
        ),
        .target(
            name: "SwiftUIExtensions",
            path: "Sources/SwiftUIExtensions"
        ),
        .target(
            name: "QuickLookExtensions",
            path: "Sources/QuickLookExtensions"
        ),
        .target(
            name: "PDFKitExtensions",
            path: "Sources/PDFKitExtensions"
        ),
        .testTarget(
            name: "FoundationExtensionsTests",
            dependencies: ["FoundationExtensions"],
            path: "Tests/FoundationExtensionsTests"
        )
    ],
    swiftLanguageModes: [.v6]
)
