// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "KRProgressHUD",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "KRProgressHUD",
            targets: ["KRProgressHUD"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krimpedance/KRActivityIndicatorView.git", from: "3.0.4"),
    ],
    targets: [
        .target(
            name: "KRProgressHUD",
            dependencies: ["KRActivityIndicatorView"],
            path: "KRProgressHUD/Classes"
        ),
        .testTarget(
            name: "KRProgressHUDTests",
            dependencies: ["KRProgressHUD", "KRActivityIndicatorView"],
            path: "KRProgressHUDTests"
        ),
    ]
)
