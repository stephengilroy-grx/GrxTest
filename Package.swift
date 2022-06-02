// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GrxTest",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GrxTest",
            targets: ["GrxTest"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
      .package(url: "file:///Users/sgilroy/Documents/Development/GrxSubTest", .upToNextMinor(from: "0.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GrxTest",
            dependencies: []),
        .testTarget(
            name: "GrxTestTests",
            dependencies: ["GrxTest"]),
    ]
)
