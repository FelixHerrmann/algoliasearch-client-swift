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
        .library(name: "AlgoliaCore", targets: ["AlgoliaCore"]),
        .library(name: "AlgoliaAbtesting", targets: ["AlgoliaAbtesting"]),
        .library(name: "AlgoliaAbtestingV3", targets: ["AlgoliaAbtestingV3"]),
        .library(name: "AlgoliaAnalytics", targets: ["AlgoliaAnalytics"]),
        .library(name: "AlgoliaComposition", targets: ["AlgoliaComposition"]),
        .library(name: "AlgoliaIngestion", targets: ["AlgoliaIngestion"]),
        .library(name: "AlgoliaInsights", targets: ["AlgoliaInsights"]),
        .library(name: "AlgoliaMonitoring", targets: ["AlgoliaMonitoring"]),
        .library(name: "AlgoliaPersonalization", targets: ["AlgoliaPersonalization"]),
        .library(name: "AlgoliaQuerySuggestions", targets: ["AlgoliaQuerySuggestions"]),
        .library(name: "AlgoliaRecommend", targets: ["AlgoliaRecommend"]),
        .library(name: "AlgoliaSearch", targets: ["AlgoliaSearch"]),
    ],
    targets: [
        .target(
            name: "AlgoliaCore",
            path: "Sources/Core",
        ),
        .target(
            name: "AlgoliaAbtesting",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Abtesting",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaAbtestingV3",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/AbtestingV3",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaAnalytics",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Analytics",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaComposition",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Composition",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaIngestion",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Ingestion",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaInsights",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Insights",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaMonitoring",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Monitoring",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaPersonalization",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Personalization",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaQuerySuggestions",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/QuerySuggestions",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaRecommend",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Recommend",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
        .target(
            name: "AlgoliaSearch",
            dependencies: [.target(name: "AlgoliaCore")],
            path: "Sources/Search",
            resources: [.copy("../../PrivacyInfo.xcprivacy")]
        ),
    ]
)
