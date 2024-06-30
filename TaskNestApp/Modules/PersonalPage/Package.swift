// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PersonalPage",
    products: [
        .library(
            name: "PersonalPage",
            targets: ["PersonalPage"]),
    ],
    dependencies: [
        .package(name: "Utils", path: "../Utils"),
    ],
    targets: [
        .target(
            name: "PersonalPage",
            dependencies: [
                .product(name: "Utils", package: "Utils"),
            ]
        ),
    ]
)
