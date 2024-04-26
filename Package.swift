// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "face_tracker",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "face_tracker",
            targets: [
                "face_tracker",
                "face_tracker_sdk_core",
                "face_tracker_effect_player",
                "face_tracker_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "face_tracker",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/face_tracker.zip",
            checksum: "d79b96f565adc2ed8b57ecd533c98cd4ac5173396c4d3f68ae6e4fa202ce8b7f"
        ),
        .target(
            name: "face_tracker_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "face_tracker_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "face_tracker_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
