// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SwiftGit2",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SwiftGit2",
            targets: ["SwiftGit2"]),
    ],
    targets: [

        .target(
            name: "SwiftGit2",
            dependencies: ["Clibgit2"],
            path: "SwiftGit2",
            exclude: [
                "SwiftGit2.h",
                "SwiftGit2.m",
            ]),

//        .testTarget(
//            name: "SwiftGit2Tests",
//            dependencies: ["SwiftGit2"],
//            path: "SwiftGit2Tests"),

        .systemLibrary(
            name: "Clibgit2",
            path: "libgit2",
            pkgConfig: "libgit2",
            providers: [
                .brew(["libgit2"]),
                .apt(["libgit2-dev"])
            ]
        ),
    ]
)
