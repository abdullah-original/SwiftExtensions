import Foundation
import Testing
@testable import FoundationExtensions

@Suite
struct AppVersionTests {
    
    @Test(
        arguments: [
            "0.1.0": AppVersion(majorVersion: 0, minorVersion: 1, patchVersion: 0),
            "1.2.3": AppVersion(majorVersion: 1, minorVersion: 2, patchVersion: 3),
            "2.3.1": AppVersion(majorVersion: 2, minorVersion: 3, patchVersion: 1),
            "3.0": AppVersion(majorVersion: 3, minorVersion: 0),
            "4": AppVersion(majorVersion: 4),
            "5..2": AppVersion(majorVersion: 5, minorVersion: 2),
            "": nil
        ]
    )
    func init_fromString(input: String, expected: AppVersion?) {
        #expect(AppVersion(from: input) == expected)
    }
    
    @Test(
        arguments: [
            AppVersion(majorVersion: 0, minorVersion: 1, patchVersion: 0): "0.1.0",
            AppVersion(majorVersion: 1, minorVersion: 0): "1.0",
            AppVersion(majorVersion: 1): "1"
        ]
    )
    func description(input: AppVersion, expected: String) {
        #expect(input.description == expected)
    }
    
    @Test(
        arguments: [
            AppVersionCompareArguement(
                lhs: AppVersion(majorVersion: 2, minorVersion: 1, patchVersion: 2),
                rhs: AppVersion(majorVersion: 2, minorVersion: 1, patchVersion: 3),
                result: true
            ),
            .init(
                lhs: AppVersion(majorVersion: 2, minorVersion: 1, patchVersion: 3),
                rhs: AppVersion(majorVersion: 2, minorVersion: 2, patchVersion: 2),
                result: true
            ),
            .init(
                lhs: AppVersion(majorVersion: 2, minorVersion: 2, patchVersion: 3),
                rhs: AppVersion(majorVersion: 3, minorVersion: 1, patchVersion: 2),
                result: true
            )
        ]
    )
    func compare(input: AppVersionCompareArguement) {
        #expect((input.lhs < input.rhs) == input.result)
    }
}

struct AppVersionCompareArguement: Equatable {
    let lhs: AppVersion
    let rhs: AppVersion
    let result: Bool
}
