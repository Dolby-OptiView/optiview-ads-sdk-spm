// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.2.0 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.0/OptiViewAdsCore.xcframework.zip",
            checksum: "cd7de760a94d4ccc07aad804e02ac48c0dfee3a7b1200e89e5c2051389a10af2"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "4480dfaa5b7d06f1266aeab234f8b15a2698f223f5f6c618b6ef34f7c9a6a787"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "7bdb7f467a5b2f0cb2b43a2f85b382855ba347430c45e4862eb974160e983837"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.0/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "c788ad718f23463115ed48038dff9b3dc9fdd8a50cd524bd0fd1342d3d71d369"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.0/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "aa1fbd2d434f0de5614f1590a03e3d3ac170f960df676c5fba4e3107e1151811"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.2.0/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "b32dfdac63527905547dbf7d643bf890079ea3ade3521f055d9981b80cfc6b52"
        ),
    ]
)
