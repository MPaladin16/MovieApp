// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MovieAppData",
    products: [
        .library(
            name: "MovieAppData",
            targets: ["MovieAppData"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MovieAppData",
            dependencies: []),
        .testTarget(
            name: "MovieAppDataTests",
            dependencies: ["MovieAppData"]),
    ]
)
