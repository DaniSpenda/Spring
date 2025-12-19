// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Spring",
    platforms: [
        .iOS(.v15), // SwiftPackageManager requires iOS 11 minimum, and Spenda iPad 15.6
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "Spring",
            targets: ["Spring"]
        ),
    ],
    targets: [
        .target(
            name: "Spring",
            path: "Spring",
            exclude: ["Info.plist"],
            resources: [
                // iOS resources
                .process("*.xib"),
                .process("../SpringApp/*.xcassets")
            ]
        )
    ]
)
