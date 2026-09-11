// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.0.0-beta.5 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.5/OptiViewAdsCore.xcframework.zip",
            checksum: "174574fca2e5fc42c28b86d8a52d13e7e9ba38107ad3c42bd6836782dc9ce85c"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.5/OptiViewAdsSDK.xcframework.zip",
            checksum: "d6867b30a7c5e9321650d92845822d379bb2a51d7f44ba113bf2930e4129f924"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.5/OptiViewAdsRuntime.xcframework.zip",
            checksum: "f9948b0d6cc4d06c7b3cbbd7a4c1f28b5edb0ca890ded71fd11cc6c607af3e75"
        ),
    ]
)
