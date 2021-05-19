// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Minizip",
    platforms: [
        .macOS(.v10_10), .iOS(.v12), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(name: "Minizip", targets: ["Minizip"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Minizip",
            dependencies: [],
            exclude: ["module"],
            linkerSettings: [
                .linkedLibrary("z")
            ]),
    ]
)


