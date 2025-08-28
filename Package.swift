// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AlgoliaSearchClient",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "Abtesting", targets: ["Abtesting"]),
        .library(name: "AbtestingV3", targets: ["AbtestingV3"]),
        .library(name: "Analytics", targets: ["Analytics"]),
        .library(name: "Composition", targets: ["Composition"]),
        .library(name: "Ingestion", targets: ["Ingestion"]),
        .library(name: "Insights", targets: ["Insights"]),
        .library(name: "Monitoring", targets: ["Monitoring"]),
        .library(name: "Personalization", targets: ["Personalization"]),
        .library(name: "QuerySuggestions", targets: ["QuerySuggestions"]),
        .library(name: "Recommend", targets: ["Recommend"]),
        .library(name: "Search", targets: ["Search"]),
    ],
    targets: [
        .target(name: "Core"),
        .target(
            name: "Abtesting",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AbtestingV3",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Analytics",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Composition",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Ingestion",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Insights",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Monitoring",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Personalization",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "QuerySuggestions",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Recommend",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "Search",
            dependencies: [.target(name: "Core")],
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
    ]
)
