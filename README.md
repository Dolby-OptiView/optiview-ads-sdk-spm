# OptiView Ads SDK — Swift Package (iOS / tvOS)

Binary SwiftPM distribution of the OptiView Ads SDK, v1.3.0. Generated per
release — the source of truth lives in the dolby-ads-sdk repository.


```swift
dependencies: [
    .package(url: "<this repo>", from: "1.3.0"),
    // The native runtime renders VAST/GAM through Google IMA — add the
    // package(s) for your platforms (both export the same module):
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", from: "3.18.4"),  // iOS
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-tvos", from: "4.2.0"),  // tvOS
    // only for OptiViewAdsAdapterTHEOplayer:
    .package(url: "https://github.com/THEOplayer/theoplayer-sdk-apple", from: "11.0.0"),
]
```

Products: `OptiViewAdsRuntime` (AVPlayer adapter + overlay renderer + IMA
glue — most apps want this), `OptiViewAdsSDK` (player-agnostic orchestrator),
`OptiViewAdsCore` (portable break-manifest brain), `OptiViewAdsAdapterTHEOplayer`
(PlayerAdapter for the THEOplayer iOS/tvOS SDK), `OptiViewAdsReactBridge`
(native core of the React Native bridge; RN apps normally get it via CocoaPods
autolinking), and `OptiViewAdsAdapterTestKit` (PlayerAdapter conformance suite;
add to test targets only, links XCTest). The binary THEOplayer adapter does not
declare `THEOplayerSDK`; the app target must also depend on product
`THEOplayerSDK` from package `theoplayer-sdk-apple`, as it does for IMA.
Import modules as `OptiViewAdsRuntime` / `OptiViewAdsSDK` /
`OptiViewAdsCore` / `OptiViewAdsAdapterTHEOplayer` /
`OptiViewAdsReactBridge` / `OptiViewAdsAdapterTestKit`.

Docs: https://optiview.dolby.com/docs/ads/player-integration/optiview-ads-sdk/
