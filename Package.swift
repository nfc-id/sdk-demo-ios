//
//  Package.swift
//  fd
//
//  Created by Alberto Calderón on 29-01-25.
//

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "fd",
    products: [
        .library(
            name: "fd",
            targets: ["fd"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.5.1")),
        .package(url: "https://github.com/devicekit/DeviceKit.git", .upToNextMajor(from: "5.5.0")),
        .package(url: "https://github.com/romanmazeev/MRZScanner.git", .upToNextMinor(from: "1.0.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.2")),
        .package(url: "https://github.com/lucaszischka/BottomSheet", .upToNextMajor(from: "3.1.1")),
        .package(name: "KeychainAccess", url: "https://github.com/kishikawakatsumi/KeychainAccess", .branch("master")),
        .package(name: "MRZParser", url: "https://github.com/romanmazeev/MRZParser", .branch("master")),
        .package(name: "NFCPassportReader", url: "https://github.com/nfc-id/NFCPassportReader", .branch("main")),
        .package(url: "https://github.com/lorenzofiamingo/swiftui-cached-async-image", .upToNextMajor(from: "2.1.1")),
        .package(url: "https://github.com/datatheorem/TrustKit", .upToNextMajor(from: "3.0.5")),
        .package(url: "https://github.com/aws-amplify/amplify-ui-swift-liveness", .upToNextMajor(from: "1.3.3"))
    ],
    targets: [
        .target(
            name: "fd",
            dependencies: [
                "lottie-spm",
                "DeviceKit",
                "MRZScanner",
                "Alamofire",
                "BottomSheet",
                "KeychainAccess",
                "MRZParser",
                "NFCPassportReader",
                "swiftui-cached-async-image",
                "TrustKit",
                "amplify-ui-swift-liveness"
            ]),
        .testTarget(
            name: "fdTests",
            dependencies: ["fd"]),
    ]
)
