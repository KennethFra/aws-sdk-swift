// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSEndpoint {
        return try AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    AWSClientRuntime.Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "codestar.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "ap-northeast-1": ServiceEndpointMetadata(),
            "ap-northeast-2": ServiceEndpointMetadata(),
            "ap-southeast-1": ServiceEndpointMetadata(),
            "ap-southeast-2": ServiceEndpointMetadata(),
            "ca-central-1": ServiceEndpointMetadata(),
            "eu-central-1": ServiceEndpointMetadata(),
            "eu-north-1": ServiceEndpointMetadata(),
            "eu-west-1": ServiceEndpointMetadata(),
            "eu-west-2": ServiceEndpointMetadata(),
            "us-east-1": ServiceEndpointMetadata(),
            "us-east-2": ServiceEndpointMetadata(),
            "us-west-1": ServiceEndpointMetadata(),
            "us-west-2": ServiceEndpointMetadata(),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "codestar.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "codestar.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "codestar.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "codestar.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
]
