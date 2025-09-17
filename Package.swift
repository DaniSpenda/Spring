// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Spring",
    platforms: [
        .iOS(.v11), // SwiftPackageManager requires iOS 11 minimum
        .tvOS(.v11)
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
