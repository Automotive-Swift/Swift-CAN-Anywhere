// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-CAN-Anywhere",
    platforms: [
        .macOS(.v12),
        //.linux
    ],
    products: [
        .library(
            name: "Swift-CAN-Anywhere",
            targets: ["Swift-CAN-Anywhere"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Automotive-Swift/Swift-CAN", .branch("master")),
        .package(url: "https://github.com/Automotive-Swift/Swift-TouCAN", .branch("master")),
        .package(url: "https://github.com/Automotive-Swift/Swift-SocketCAN", .branch("master")),
    ],
    targets: [
        .target(
            name: "Swift-CAN-Anywhere",
            dependencies: [
                .product(name: "Swift-CAN", package: "Swift-CAN"),
                .product(name: "Swift-SocketCAN", package: "Swift-SocketCAN", condition: .when(platforms: [.linux])),
                .product(name: "Swift-TouCAN", package: "Swift-TouCAN", condition: .when(platforms: [.macOS])),
            ]),
        .testTarget(
            name: "Swift-CAN-AnywhereTests",
            dependencies: ["Swift-CAN-Anywhere"]),
    ]
)
