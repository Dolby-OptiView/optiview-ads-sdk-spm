// swift-tools-version:5.9
// OptiView Ads SDK — generated for v1.0.0-beta.6 by scripts/publish-spm.sh
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
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.6/OptiViewAdsCore.xcframework.zip",
            checksum: "67797d2b833dd802610a2e7d47f9751ecbc2424301855cdb7991e0d4f7e2bf89"
        ),
        .binaryTarget(
            name: "OptiViewAdsSDK",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.6/OptiViewAdsSDK.xcframework.zip",
            checksum: "279e83b83918b206cfe4117afbe666e09cb22b34506b5735cf62799b9e968c0c"
        ),
        .binaryTarget(
            name: "OptiViewAdsRuntime",
            url: "https://ads-sdk.xagget.prudentgiraffe.com/ios/main/1.0.0-beta.6/OptiViewAdsRuntime.xcframework.zip",
            checksum: "edd8d4d27208f3847b93c6a3a2d8aee47d2bba0411c8bb3a6342878ff337ed78"
        ),
    ]
)
