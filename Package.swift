// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPrinter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorPrinter",
            targets: ["CapacitorPrinterPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "CapacitorPrinterPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorPrinterPlugin"),
        .testTarget(
            name: "CapacitorPrinterPluginTests",
            dependencies: ["CapacitorPrinterPlugin"],
            path: "ios/Tests/CapacitorPrinterPluginTests")
    ]
)