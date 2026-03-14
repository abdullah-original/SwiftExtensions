// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "SwiftExtensions",
    platforms: [.iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14), .watchOS(.v7)],
    products: [
        .library(
            name: "SwiftExtensions",
            targets: ["FoundationExtensions", "UIKitExtensions"]
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
        )
    ],
    swiftLanguageModes: [.v6]
)

//private let targets: [Target] = {
//    let foundationExtensionsTarget: Target = .target(
//        name: "FoundationExtensions",
//        path: "Sources/FoundationExtensions"
//    )
//#if canImport(UIKit)
//    let uiKitExtensionsTarget: Target = .target(
//        name: "UIKitExtensions",
//        path: "Sources/UIKitExtensions"
//    )
//    return [foundationExtensionsTarget, uiKitExtensionsTarget]
//#else
//    return [foundationExtensionsTarget]
//#endif
//}()
//
//private let productTargets: [String] = {
//#if canImport(UIKit)
//    return ["FoundationExtensions", "UIKitExtensions"]
//#else
//    return ["FoundationExtensions"]
//#endif
//}()
