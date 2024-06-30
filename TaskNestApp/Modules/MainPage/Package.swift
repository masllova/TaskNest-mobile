// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MainPage",
    products: [
        .library(
            name: "MainPage",
            targets: ["MainPage"]),
    ],
    dependencies: [
        .package(name: "Utils", path: "../Utils"),
    ],
    targets: [
        .target(
            name: "MainPage",
            dependencies: [
                .product(name: "Utils", package: "Utils"),
            ]
        ),
    ]
)
