// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-android",
    products: [
        .library(name: "SwiftAndroid", targets: ["SwiftAndroid"]),
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
            name: "SwiftAndroid",
            dependencies: ["java_util", "JNI"]
        )
    ]
)
