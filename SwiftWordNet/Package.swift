// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWordNet",
    products: [
        .library(
            name: "SwiftWordNet",
            targets: ["SwiftWordNet"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.13.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftWordNet",
            dependencies: [.product(name: "SQLite", package: "SQLite")]),
        .testTarget(
            name: "SwiftWordNetTests",
            dependencies: ["SwiftWordNet"]),
    ]
)
