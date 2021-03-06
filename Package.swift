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
    .library(
      name: "GrxTestsA",
      targets: ["GrxTestsA"]
    ),
    .library(
      name: "GrxTestsB",
      targets: ["GrxTestsB"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/stephengilroy-grx/GrxSubTest.git", .upToNextMinor(from: "0.0.0")),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "GrxTest",
      dependencies: [
        "GrxTestsB",
        .product(
          name: "GrxSubTest",
          package: "GrxSubTest"
        )
      ]),
    .target(
      name: "GrxTestsA",
      dependencies: [
        "GrxTestsB",
        .product(name: "GrxSubTest", package: "GrxSubTest")
      ]
    ),
    .target(name: "GrxTestsB"),
    .testTarget(
      name: "GrxTestTests",
      dependencies: ["GrxTest", "GrxTestsA"]),
  ]
)
