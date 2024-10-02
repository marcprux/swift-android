// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-android-sdk",
    products: [
        .library(name: "AndroidSDK", type: .dynamic, targets: ["AndroidSDK"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/marcprux/java_util.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/marcprux/JNI.git",
            branch: "master"
        )
    ],
    targets: [
        .target(
            name: "AndroidSDK",
            dependencies: ["java_util", "JNI"]
        ),
        .testTarget(
            name: "AndroidSDKTests",
            dependencies: ["AndroidSDK"]
        )
    ]
)
