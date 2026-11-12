// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.6.0 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.0/OptiViewAdsCore.xcframework.zip",
            checksum: "f09b05ced86f72b9cad104d74a173cf59c554a4e201c1ee8a33b9889ce726a14"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "c080f1a9ea6ab6dfac81421726f17bf7cf47eb6f1e8e0d5a7330fd6144bd732b"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "63950b361da7136007157909102c1a4db7656a8e5a034c7dbc7e03f0ae990a49"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.0/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "028f862acc8fd2da0fe99ace0b109b532b1bd1101c1de520d3d2d83316130a2a"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.0/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "f57dcbc29ed697e2ccec01e30abc49302aace87319dfdbb133ad888623bce3c4"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.6.0/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "76883b85da8bd9078a86273befd5e38f9f97e18bf328e148295517204cf2e9e6"
        ),
    ]
)
