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
        partitionEndpoint: "aws-global",
        isRegionalized: false,
        defaults: ServiceEndpointMetadata(
            hostName: "chime.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "aws-global": ServiceEndpointMetadata(
                hostName: "chime.us-east-1.amazonaws.com",
                protocols: ["https"],
                credentialScope: CredentialScope(region: "us-east-1")
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: ServiceEndpointMetadata(
            hostName: "chime.{region}.amazonaws.com.cn",
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
            hostName: "chime.{region}.c2s.ic.gov",
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
            hostName: "chime.{region}.sc2s.sgov.gov",
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
            hostName: "chime.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
]
