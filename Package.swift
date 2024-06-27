// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorjsPrinter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorjsPrinter",
            targets: ["CapacitorjsPrinterPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CapacitorjsPrinterPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorjsPrinterPlugin"),
        .testTarget(
            name: "CapacitorjsPrinterPluginTests",
            dependencies: ["CapacitorjsPrinterPlugin"],
            path: "ios/Tests/CapacitorjsPrinterPluginTests")
    ]
)