// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CooklangParser",
    products: [
        .library(
            name: "CooklangParser",
            targets: ["CooklangParser"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CooklangParser",
            dependencies: ["CooklangParserFFI"],
            path: "Sources/CooklangParser",
            sources: ["Cooklang.swift"]),
        .binaryTarget(
            name: "CooklangParserFFI",
            path: "CooklangParserFFI.xcframework")
    ]
)
