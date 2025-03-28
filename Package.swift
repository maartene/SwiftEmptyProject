// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var dependencies: [Package.Dependency] = []
var targetPlugins: [Target.PluginUsage] = []

#if os(macOS) || os(iOS)
    dependencies.append(
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.58.2"))
    targetPlugins.append(
        .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins"))
#endif

let package = Package(
    name: "{{projectName}}",
    platforms: [
        .macOS(.v15)
    ],
    dependencies: dependencies,
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "{{projectName}}",
            plugins: targetPlugins
        ),
        .testTarget(
            name: "{{projectName}}Tests",
            dependencies: [
                "{{projectName}}"
            ],
            plugins: targetPlugins
        ),
    ]
)
