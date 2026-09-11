# OptiView Ads SDK — Swift Package (iOS / tvOS)

Binary SwiftPM distribution of the OptiView Ads SDK, v1.0.0-beta.5. Generated per
release — the source of truth lives in the dolby-ads-sdk repository.

> **Pre-release.** Pin it exactly (below) or use a prerelease lower bound such as
> `"1.0.0-beta.5"..<"1.0.0"`; a plain `from:` on a stable version will not pick up betas.

```swift
dependencies: [
    .package(url: "<this repo>", exact: "1.0.0-beta.5"),
    // The native runtime renders VAST/GAM through Google IMA — add the
    // package(s) for your platforms (both export the same module):
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", from: "3.18.4"),  // iOS
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-tvos", from: "4.2.0"),  // tvOS
]
```

Products: `OptiViewAdsRuntime` (AVPlayer adapter + overlay renderer + IMA
glue — most apps want this), `OptiViewAdsSDK` (player-agnostic orchestrator),
`OptiViewAdsCore` (portable break-manifest brain). Import modules as
`OptiViewAdsRuntime` / `OptiViewAdsSDK` / `OptiViewAdsCore`.

Docs: https://ads-sdk.xnappet.live/docs.html
