// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.2.1 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.1/OptiViewAdsCore.xcframework.zip",
            checksum: "4ca77d29a46bc7b10ede2645b04f408308879b16903a6d18a265edeb6e2872cb"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.1/OptiViewAdsSDK.xcframework.zip",
            checksum: "cdb9d1ee16abce55b3fff2333c51a4d65c606b7b15fcb144657eacfff751c0b8"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.1/OptiViewAdsRuntime.xcframework.zip",
            checksum: "45a8f899e0b18bb623d7a55146fdbe46c7e8f5cd2f88ae956bbfe7749e273556"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.1/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "8459fc1f0ed4a11426ceee324f46c6d1ed850d177c5388399b8b592381a00fbc"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.1/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "03e3c67253db901a2e1f97bd129026e8dfb71b89f5d361de9658fb6531a6a84b"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.1/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "07602cbc1590d86d886b747a28bcaa08fd1fd446ece7496d1a4aaf1542e75192"
        ),
    ]
)
