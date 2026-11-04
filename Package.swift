// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.4.0 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.4.0/OptiViewAdsCore.xcframework.zip",
            checksum: "d787759604ff96c340e7bcb7cf303bb6f5913fbd86ada44a080bf26d0b46b628"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.4.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "4f20fcbf155a5f5df2d8f957cd43a457ebfd3847ad36c78da456ae2f0d53e4a2"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.4.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "ff596e8a0e54ed6248a7d20af3a2347a9fb8851d31ddaaa56a55dbd8d0f8a3e6"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.4.0/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "b715f04d18d84546a5f7b892ab5f4be4a00f21d4dddb2ee9cd847b5f37aaa5bf"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.4.0/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "e491143b2c334f596b215139134a47edc1bfa1b49c82bb989c0496cb82ad38a7"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.4.0/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "167c916a660d1048872466b4fd8f61521b451c92432efc1e6e6d10f113d0d9e7"
        ),
    ]
)
