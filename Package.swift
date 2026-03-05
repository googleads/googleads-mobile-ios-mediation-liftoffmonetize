// swift-tools-version:5.6

// Copyright 2025 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "LiftoffMonetizeAdapter",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "LiftoffMonetizeAdapterTarget",
      targets: ["LiftoffMonetizeAdapterTarget"]
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
      exact: "7.7.1"
    ),
    .package(
      url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
      from: "13.0.0"
    ),
  ],
  targets: [
    .target(
      name: "LiftoffMonetizeAdapterTarget",
      dependencies: [
        .target(name: "LiftoffMonetizeAdapter"),
        .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
      ],
      path: "LiftoffMonetizeAdapterTarget"
    ),
    .binaryTarget(
      name: "LiftoffMonetizeAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/liftoffmonetize/LiftoffMonetizeAdapter-7.7.1.0.zip",
      checksum: "de3170633a5977e4bc0f85d51632a0ac5933220370e2ebabac4a41970d4963b6"
    ),
  ]
)
