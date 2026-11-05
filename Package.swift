// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.5.0 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.0/OptiViewAdsCore.xcframework.zip",
            checksum: "4e0d844ef5ae71a2f90897e4acf2ff503b28a04bb3f1df10f493cd22ec1e1765"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.0/OptiViewAdsSDK.xcframework.zip",
            checksum: "b3c170ee328af00a43887e9d61d2052442e3c527047f7699fe45b14a483671c6"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.0/OptiViewAdsRuntime.xcframework.zip",
            checksum: "b6d4974baf628bdf806c5db32a9d81fdf53d117ff9ffc87a013884ef665d92fa"
        ),
        .binaryTarget(
            name: "OptiViewAdsReactBridge",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.0/OptiViewAdsReactBridge.xcframework.zip",
            checksum: "a797c189ac51880bff31d8898efb7e7e1050f952e8857446bfb0adc7001e0e41"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTHEOplayer",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.0/OptiViewAdsAdapterTHEOplayer.xcframework.zip",
            checksum: "5f7163d35eedbc63d1205c4ca4b6c11a25eba0be23a353eec58c45a44a2e5d94"
        ),
        .binaryTarget(
            name: "OptiViewAdsAdapterTestKit",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.5.0/OptiViewAdsAdapterTestKit.xcframework.zip",
            checksum: "2df6b5c3a03310757dd10d1923129d93aca8528d5a6ee3df54ab69b0b028ac0a"
        ),
    ]
)
