// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.0.0 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0/OptiViewAdsCore.xcframework.zip",
            checksum: "019df866611775e49a543e9cc01ffc3c36f223ecc07db2993e56c862f5443947"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "cede86acd08d9ad55058cf74ffa122494e179d9d7a882bd080096ff550a03814"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "779607b10c79e7167c87c6e9bb84932398fe07009d69772c8bdaee980edbd64c"
        ),
    ]
)
