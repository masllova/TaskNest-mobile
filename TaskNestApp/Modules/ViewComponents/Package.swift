// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViewComponents",
    platforms: [
            .iOS(.v15)
        ],
    products: [
        .library(
            name: "ViewComponents",
            targets: ["ViewComponents"]),
    ],
    dependencies: [
        .package(name: "AppDesign", path: "../AppDesign"),
        .package(name: "Utils", path: "../Utils"),
        ],
    targets: [
        .target(
            name: "ViewComponents",
            dependencies: [
                .product(name: "AppDesign", package: "AppDesign"),
                .product(name: "Utils", package: "Utils"),
                ]
        )
    ]
)
