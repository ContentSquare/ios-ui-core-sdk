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
            url: "https://github.com/contentsquare/ios-ui-core-sdk/releases/download/0.2.1/package.zip",
            checksum: "0896a82b9204547e1457614cf9bada5acd044dfaf48162da4981572e8058c504"
    )
    ],
    swiftLanguageVersions: [.v5]
)
