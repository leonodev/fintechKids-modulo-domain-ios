// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FHKDomain",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // PRODUCTION CODE
        .library(
            name: "FHKDomain",
            targets: ["FHKDomain"]
        ),
        // MOCKS / PREVIEWS / TESTS
        .library(
            name: "FHKDomainTesting",
            targets: ["FHKDomainTesting"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonodev/fintechKids-modulo-utils-ios.git",
            branch: "main"
        )
    ],
    targets: [
        // Primary Target (Production)
        .target(
            name: "FHKDomain",
            dependencies: [
                // Modules FHK
                .product(name: "FHKUtils", package: "fintechKids-modulo-utils-ios")
            ]
        ),
        // Testing Target (Mocks and Previews)
        .target(
            name: "FHKDomainTesting",
            dependencies: [
                "FHKDomain" // It relies on FHKDomain to extend its entities.
            ]
        ),
        // Unit Test target for the FHKDomain itself
        .testTarget(
            name: "FHKDomainTests",
            dependencies: [
                "FHKDomain",
                "FHKDomainTesting" 
            ]
        )
    ]
)
