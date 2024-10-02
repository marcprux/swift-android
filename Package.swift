// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "swift-android",
    products: [
        .library(name: "Android", targets: ["Android"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/marcprux/java_util.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/marcprux/JNI.git",
            branch: "main"
        )
    ],
    targets: [
        .target(
            name: "Android",
            dependencies: ["java_util", "JNI"]
        )
    ]
)
