// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "msgpack",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "msgpack",
            targets: ["msgpack"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
		.package(url: "https://github.com/Flight-School/MessagePack", .revision("d9acb58b6a3757f252009a21cf966ddb40c47f8e")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "msgpack",
            dependencies: []),
        .testTarget(
            name: "msgpackTests",
            dependencies: ["msgpack", "MessagePack"]),
    ]
)
