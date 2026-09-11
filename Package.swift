// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.0.0-beta.4 by scripts/publish-spm.sh
// (dolby-ads-sdk repo). Do not edit by hand: every release overwrites this file.
//
// Layers (each a separate binary module — take the one you need plus what it
// depends on): OptiViewAdsRuntime → OptiViewAdsRuntime + OptiViewAdsSDK + OptiViewAdsCore
// + Google IMA; OptiViewAdsSDK → OptiViewAdsSDK + OptiViewAdsCore; OptiViewAdsCore →
// OptiViewAdsCore only.
import PackageDescription

let package = Package(
    name: "optiview-ads-sdk",
    platforms: [.iOS(.v15), .tvOS(.v15)],
    products: [
        .library(name: "OptiViewAdsCore", targets: ["OptiViewAdsCore"]),
        .library(name: "OptiViewAdsSDK", targets: ["OptiViewAdsSDK", "OptiViewAdsCore"]),
        .library(name: "OptiViewAdsRuntime", targets: ["OptiViewAdsRuntime", "OptiViewAdsSDK", "OptiViewAdsCore"]),
    ],
    targets: [
        .binaryTarget(
            name: "OptiViewAdsCore",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.4/OptiViewAdsCore.xcframework.zip",
            checksum: "fffd9468d0aedd344741059b28ccb39a364ead34e021e554962f61981ee6bfe7"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.4/OptiViewAdsSDK.xcframework.zip",
            checksum: "03f4002966fbd6ad56f4b6b2791ad8ab8b6e430988e3fba4a80a220bd45cfb38"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.4/OptiViewAdsRuntime.xcframework.zip",
            checksum: "6700129d7127f521a946385f3176707c901be912e8d5b64a96a6315eaf3c82e4"
        ),
    ]
)
