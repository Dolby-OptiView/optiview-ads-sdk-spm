// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.3.0 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.3.0/OptiViewAdsCore.xcframework.zip",
            checksum: "4e47e99b8b8b03772f9973210ee645ac53fce7a90c4af231acfe387fc0e77028"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.3.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "baeb7486469dbe51ef70bcc49ff4203a54fc3ce0d4e2aae1934ccc8446896fcd"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.3.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "c723c65f285afdb71c3bed7988ffe3be49026402018e8241db7c9805681284cd"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.3.0/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "5418dd6f9d52cccdfe28cb4feb0361b3bb1ff40840b483d7bcf2d6eba2877688"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.3.0/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "b5b71da157114ee1775d80861c5b3f7a4d0ebcf0c77da2ddc7999f3fff472b26"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.3.0/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "145e989bfe7f79a544ee76e9abca093a8b9e6e6c185df40cf852731634830448"
        ),
    ]
)
