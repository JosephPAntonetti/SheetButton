// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SheetButton",
    platforms: [.iOS(.v15), .macOS(.v13), .watchOS(.v7), .macCatalyst(.v15)],
    products: [
        .library(
            name: "SheetButton",
            targets: ["SheetButton"]),
    ],
    targets: [
        .target(
            name: "SheetButton")
    ]
)
