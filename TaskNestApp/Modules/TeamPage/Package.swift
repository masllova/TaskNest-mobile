// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TeamPage",
    platforms: [
            .iOS(.v15)
        ],
    products: [
        .library(
            name: "TeamPage",
            targets: ["TeamPage"]),
    ],
    dependencies: [
        .package(name: "Utils", path: "../Utils"),
    ],
    targets: [
        .target(
            name: "TeamPage",
            dependencies: [
                .product(name: "Utils", package: "Utils"),
            ]
        ),
    ]
)
