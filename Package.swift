// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLittleLibrary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyLittleLibrary",
            targets: ["MyLittleLibrary"]),
        .library(name: "BoxThen",
            targets: ["BoxThen"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyLittleLibrary"),
        .testTarget(
            name: "MyLittleLibraryTests",
            dependencies: ["MyLittleLibrary"]),
        .target(name: "BoxThen",
                dependencies:[],
                path: "BoxThen",
                resources: [
                    .process("Logo.gif"),
                    .copy("Data")
                ]
               )
    ]
)
