// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.5.1 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.1/OptiViewAdsCore.xcframework.zip",
            checksum: "9d385e785989e0e6486b8b33eb08c5d8184b13ec25ffd5231510342a3baae678"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.1/OptiViewAdsSDK.xcframework.zip",
            checksum: "a323ce2579622189697da8a25f8e40963944d71f258972c4d44f51bf254db11b"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.1/OptiViewAdsRuntime.xcframework.zip",
            checksum: "4bcc41a966fca561f57b7fab58ff72602e715fc161f47f11486e66af06c856ee"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.1/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "f0e92ce05db98fd5719f45a657f10bc435cc0e2f1bb666b90086f2dad9b429f6"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.1/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "25e59b0d2cc0826873eb1bd7910fedc252f6980a71851f144acc210d59844fb4"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.1/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "ae4256dddff073f426cde04a37aca109e66a1e1bc760a21fa23e822c0d256fe0"
        ),
    ]
)
