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
        .package(url: "https://github.com/ContentSquare/apple-core-sdk.git", .upToNextMinor(from: "0.2.3")),
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
            url: "https://github.com/contentsquare/ios-ui-core-sdk/releases/download/0.3.0/package.zip",
            checksum: "026e7f6aa09c3dcce9a375a3b48d1252210ae06ffc01417a6b275b2713052528"
    )
    ],
    swiftLanguageVersions: [.v5]
)
