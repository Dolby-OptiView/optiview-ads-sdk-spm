// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.0.0-beta.3 by scripts/publish-spm.sh
// (dolby-ads-sdk repo). Do not edit by hand: every release overwrites this file.
//
// Layers (each a separate binary module — take the one you need plus what it
// depends on): OptiViewAdsRuntime → OptiViewAdsRuntime + OptiViewAdsSDK + OptiViewAdsCore
// + Google IMA; OptiViewAdsSDK → OptiViewAdsSDK + OptiViewAdsCore; OptiViewAdsCore →
// OptiViewAdsCore only.
import PackageDescription

let package = Package(
    name: "optiview-ads-sdk",
    platforms: [.iOS(.v15), .tvOS(.v15)],
    products: [
        .library(name: "OptiViewAdsCore", targets: ["OptiViewAdsCore"]),
        .library(name: "OptiViewAdsSDK", targets: ["OptiViewAdsSDK", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsRuntime", targets: ["OptiViewAdsRuntime", "OptiViewAdsSDK", "OptiViewAdsCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "OptiViewAdsCore",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.3/OptiViewAdsCore.xcframework.zip",
            checksum: "4f2c81eb36a70365ebe18b9c0144ce388fcab7e3231d36853d7f790b1f42ede1"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.3/OptiViewAdsSDK.xcframework.zip",
            checksum: "a37ac0e4dd2d9941bf2d4befb7da7ca6e2fa3d841adf622d0836edbad08fc0a6"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.3/OptiViewAdsRuntime.xcframework.zip",
            checksum: "5ddd658a20c44a74ae0bdf404157bc87b6210f30a80693800eef5ed3fae253e4"
        ),
    ]
)
