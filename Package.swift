// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "ContentsquareUICore",
    platforms: [
        .iOS(.v13),
        .macCatalyst(.v13),
    ],
    products: [
        .library(name: "ContentsquareUICore", targets: [
            "__ContentsquareUICore",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/ContentSquare/apple-core-sdk.git", .upToNextMinor(from: "0.2.0")),
    ],
    targets: [
        .target(
            name: "__ContentsquareUICore",
            dependencies: [
                .product(name: "ContentsquareCore", package: "apple-core-sdk"),
                "ContentsquareUICore",
            ]
        ),
        .binaryTarget(
            name: "ContentsquareUICore",
            url: "https://github.com/contentsquare/ios-ui-core-sdk/releases/download/0.2.0/package.zip",
            checksum: "870d42d2fbc4b6b35ada9b0defb09b12fc1e602cf511372487fe2a273173d29f"
    )
    ],
    swiftLanguageVersions: [.v5]
)
