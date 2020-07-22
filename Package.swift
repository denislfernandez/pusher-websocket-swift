// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PusherSwiftC",
    products: [
        .library(name: "PusherSwiftC", targets: ["PusherSwiftC"])
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", .upToNextMajor(from: "3.1.0")),
    ],
    targets: [
        .target(
            name: "PusherSwiftC",
            dependencies: [
                "Starscream",
            ],
            path: "Sources",
            exclude: ["PusherSwiftCWithEncryption-Only"]
        ),
        .testTarget(
            name: "PusherSwiftCTests",
            dependencies: ["PusherSwiftC"],
            path: "Tests",
            exclude: ["PusherSwiftCWithEncryption-Only"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
