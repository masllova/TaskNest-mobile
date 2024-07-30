// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Utils",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Utils",
            targets: ["Utils"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
    ],
    targets: [
        .target(
            name: "Utils",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ]),
    ]
)
