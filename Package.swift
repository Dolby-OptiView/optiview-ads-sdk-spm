// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.1.0 by scripts/publish-spm.sh
// (dolby-ads-sdk repo). Do not edit by hand: every release overwrites this file.
//
// Layers (each a separate binary module — take the one you need plus what it
// depends on): OptiViewAdsRuntime → Runtime + SDK + Core + Google IMA;
// OptiViewAdsSDK → SDK + Core; OptiViewAdsCore → Core; ReactBridge → ReactBridge
// + SDK + Core; adapters → adapter + Core.
import PackageDescription

let package = Package(
    name: "optiview-ads-sdk",
    platforms: [.iOS(.v15), .tvOS(.v15)],
    products: [
        .library(name: "OptiViewAdsCore", targets: ["OptiViewAdsCore"]),
        .library(name: "OptiViewAdsSDK", targets: ["OptiViewAdsSDK", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsRuntime", targets: ["OptiViewAdsRuntime", "OptiViewAdsSDK", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsReactBridge", targets: ["OptiViewAdsReactBridge", "OptiViewAdsSDK", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsAdapterTHEOplayer", targets: ["OptiViewAdsAdapterTHEOplayer", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsAdapterTestKit", targets: ["OptiViewAdsAdapterTestKit", "OptiViewAdsCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "OptiViewAdsCore",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.0/OptiViewAdsCore.xcframework.zip",
            checksum: "679880901ad27b247afd12e88a1dd55d6396701e9d7c7207edcaa2a6a9e12cdb"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "143413c6c56e22c9f89f1d3c11ede9da7144c313e8470972d8bf0c3ad19e67ee"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "40ce25f47df85508967a037442a6a0bb6a040d1d0030e0572360671e1e7d1d98"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.0/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "5e98cac581772083d5c96dcf82ac8e68f1a9e38b195cdf26823185042662fdf2"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.0/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "c6f4b28658041ea7360c8575805f2ff2fbd2d1ca3b9e4a5aa3b0167cd05fd1d7"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.0/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "d085844ee78a9a26d6e0409dd752318feda8129170e4f7a0d91b2ed8a61b3935"
        ),
    ]
)
