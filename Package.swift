// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Spring",
    platforms: [
        .iOS(.v8),
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
            sources: ["."],
            resources: [
                // iOS resources
                .process("*.xib"),
                .process("../SpringApp/*.xcassets")
            ]
        )
    ]
)
