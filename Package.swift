// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.6.1 by scripts/publish-spm.sh
// (dolby-ads-sdk repo). Do not edit by hand: every release overwrites this file.
//
// Layers (each a separate binary module — take the one you need plus what it
// depends on): OptiViewAdsRuntime → Runtime + SDK + Core + Google IMA;
// OptiViewAdsSDK → SDK + Core; OptiViewAdsCore → Core; ReactBridge → ReactBridge
// + SDK + Core; adapters → adapter + Core.
//
// OptiViewAdsSDK links the Lens SDK framework without embedding it. A binary
// target cannot declare dependencies, so the OptiViewAdsLens source target
// carries the Lens package into every product that includes OptiViewAdsSDK.
import PackageDescription

let package = Package(
    name: "optiview-ads-sdk",
    platforms: [.iOS(.v15), .tvOS(.v15)],
    products: [
        .library(name: "OptiViewAdsCore", targets: ["OptiViewAdsCore"]),
        .library(name: "OptiViewAdsSDK", targets: ["OptiViewAdsSDK", "OptiViewAdsCore", "OptiViewAdsLens"]),
        .library(name: "OptiViewAdsRuntime", targets: ["OptiViewAdsRuntime", "OptiViewAdsSDK", "OptiViewAdsCore", "OptiViewAdsLens"]),
        .library(name: "OptiViewAdsReactBridge", targets: ["OptiViewAdsReactBridge", "OptiViewAdsSDK", "OptiViewAdsCore", "OptiViewAdsLens"]),
        .library(name: "OptiViewAdsAdapterTHEOplayer", targets: ["OptiViewAdsAdapterTHEOplayer", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsAdapterTestKit", targets: ["OptiViewAdsAdapterTestKit", "OptiViewAdsCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Dolby-OptiView/optiview-lens-sdk-swift", exact: "0.7.0"),
    ],
    targets: [
        .binaryTarget(
            name: "OptiViewAdsCore",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.1/OptiViewAdsCore.xcframework.zip",
            checksum: "1d4dd6fc21083f02e8c7978449f25b037e1e620a02eeea64424735dd5ec810e3"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.1/OptiViewAdsSDK.xcframework.zip",
            checksum: "c732a2c8e04c56c82862fcb47e65e58a92d6daf04e2b625028a6a08206d89847"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.1/OptiViewAdsRuntime.xcframework.zip",
            checksum: "80b98b055141727a51bf678de707e263d5b2f79dd1806d7c6ee8749c1e7c532f"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.1/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "69bcf1e64e1f31b122bb6b238af3e82ebd7574eec20c6a6f9ff1ddf41af9fd3a"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.1/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "57f99ff729522312d5554f971ebc711aacf3c2eae74e5acd413fe0c7c05d8681"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.1/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "a1242d961d29539a61e472d0d148cce272a858894c4e52683c0715886b3ff7d6"
        ),
        .target(name: "OptiViewAdsLens", dependencies: [.product(name: "LensSDK", package: "optiview-lens-sdk-swift")], path: "Sources/OptiViewAdsLens"),
    ]
)
