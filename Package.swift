// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.1.1 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.1/OptiViewAdsCore.xcframework.zip",
            checksum: "802086642a73f5564a970bf6a3bd8b0286b529ec85c4a8f112dad4fab142754a"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.1/OptiViewAdsSDK.xcframework.zip",
            checksum: "4c98c00a65fed1aca0b70c81810353d454d105b12f244dce3a37f6bc76f127d0"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.1/OptiViewAdsRuntime.xcframework.zip",
            checksum: "a3a67c4458c9fa036ce3fcfbb6bcd33a1d1de005256cc4b0f32028d7de9d9c2d"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.1/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "e70b544d92ea5b925cc05ad6c54ed8a7ca3cfec80abea0eff795c99dfc8ba1b2"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.1/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "56eb95785fd8d5e5d4d0ca18ddf8007fb15a9c75ec70dd2e785167ee8fb7ab58"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.1.1/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "79a42f9911ba7c01f0a809d0d8de38346a084d01b5d4bce56bed401332694b01"
        ),
    ]
)
