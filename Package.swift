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
    targets: [
        .target(
            name: "__ContentsquareUICore",
            dependencies: [
                "ContentsquareUICore",
            ]
        ),
        .binaryTarget(
            name: "ContentsquareUICore",
            url: "https://github.com/contentsquare/ios-ui-core-sdk/releases/download/0.1.0/package.zip",
            checksum: "bf7b0369829fff2e739f9c1f869b581fa54ca9db9e61e2ca295384465e824faf"
    )
    ],
    swiftLanguageVersions: [.v5]
)
