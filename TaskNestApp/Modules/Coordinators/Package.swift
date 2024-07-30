// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Coordinators",
    platforms: [
            .iOS(.v15)
        ],
    products: [
        .library(
            name: "Coordinators",
            targets: ["Coordinators"]),
    ],
    dependencies: [
        .package(name: "Utils", path: "../Utils"),
        .package(name: "Registration", path: "../Registration"),
        .package(name: "MainPage", path: "../MainPage"),
        .package(name: "PersonalPage", path: "../PersonalPage"),
        .package(name: "TeamPage", path: "../TeamPage"),
    ],
    targets: [
        .target(
            name: "Coordinators",
            dependencies: [
                .product(name: "Utils", package: "Utils"),
                .product(name: "Registration", package: "Registration"),
                .product(name: "MainPage", package: "MainPage"),
                .product(name: "PersonalPage", package: "PersonalPage"),
                .product(name: "TeamPage", package: "TeamPage"),
            ]
        ),
    ]
)
