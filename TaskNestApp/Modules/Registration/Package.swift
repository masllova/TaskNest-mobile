// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Registration",
    platforms: [
            .iOS(.v15)
        ],
    products: [
        .library(
            name: "Registration",
            targets: ["Registration"]),
    ],
    dependencies: [
        .package(name: "Utils", path: "../Utils"),
        .package(name: "AppDesign", path: "../AppDesign"),
        .package(name: "ViewComponents", path: "../ViewComponents"),
    ],
    targets: [
        .target(
            name: "Registration",
            dependencies: [
                .product(name: "Utils", package: "Utils"),
                .product(name: "AppDesign", package: "AppDesign"),
                .product(name: "ViewComponents", package: "ViewComponents"),
            ]
        ),
    ]
)
