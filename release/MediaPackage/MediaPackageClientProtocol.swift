// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Elemental MediaPackage
public protocol MediaPackageClientProtocol {
    /// Changes the Channel's properities to configure log subscription
    func configureLogs(input: ConfigureLogsInput, completion: @escaping (SdkResult<ConfigureLogsOutputResponse, ConfigureLogsOutputError>) -> Void)
    /// Creates a new Channel.
    func createChannel(input: CreateChannelInput, completion: @escaping (SdkResult<CreateChannelOutputResponse, CreateChannelOutputError>) -> Void)
    /// Creates a new HarvestJob record.
    func createHarvestJob(input: CreateHarvestJobInput, completion: @escaping (SdkResult<CreateHarvestJobOutputResponse, CreateHarvestJobOutputError>) -> Void)
    /// Creates a new OriginEndpoint record.
    func createOriginEndpoint(input: CreateOriginEndpointInput, completion: @escaping (SdkResult<CreateOriginEndpointOutputResponse, CreateOriginEndpointOutputError>) -> Void)
    /// Deletes an existing Channel.
    func deleteChannel(input: DeleteChannelInput, completion: @escaping (SdkResult<DeleteChannelOutputResponse, DeleteChannelOutputError>) -> Void)
    /// Deletes an existing OriginEndpoint.
    func deleteOriginEndpoint(input: DeleteOriginEndpointInput, completion: @escaping (SdkResult<DeleteOriginEndpointOutputResponse, DeleteOriginEndpointOutputError>) -> Void)
    /// Gets details about a Channel.
    func describeChannel(input: DescribeChannelInput, completion: @escaping (SdkResult<DescribeChannelOutputResponse, DescribeChannelOutputError>) -> Void)
    /// Gets details about an existing HarvestJob.
    func describeHarvestJob(input: DescribeHarvestJobInput, completion: @escaping (SdkResult<DescribeHarvestJobOutputResponse, DescribeHarvestJobOutputError>) -> Void)
    /// Gets details about an existing OriginEndpoint.
    func describeOriginEndpoint(input: DescribeOriginEndpointInput, completion: @escaping (SdkResult<DescribeOriginEndpointOutputResponse, DescribeOriginEndpointOutputError>) -> Void)
    /// Returns a collection of Channels.
    func listChannels(input: ListChannelsInput, completion: @escaping (SdkResult<ListChannelsOutputResponse, ListChannelsOutputError>) -> Void)
    /// Returns a collection of HarvestJob records.
    func listHarvestJobs(input: ListHarvestJobsInput, completion: @escaping (SdkResult<ListHarvestJobsOutputResponse, ListHarvestJobsOutputError>) -> Void)
    /// Returns a collection of OriginEndpoint records.
    func listOriginEndpoints(input: ListOriginEndpointsInput, completion: @escaping (SdkResult<ListOriginEndpointsOutputResponse, ListOriginEndpointsOutputError>) -> Void)
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    func rotateChannelCredentials(input: RotateChannelCredentialsInput, completion: @escaping (SdkResult<RotateChannelCredentialsOutputResponse, RotateChannelCredentialsOutputError>) -> Void)
    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    func rotateIngestEndpointCredentials(input: RotateIngestEndpointCredentialsInput, completion: @escaping (SdkResult<RotateIngestEndpointCredentialsOutputResponse, RotateIngestEndpointCredentialsOutputError>) -> Void)
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an existing Channel.
    func updateChannel(input: UpdateChannelInput, completion: @escaping (SdkResult<UpdateChannelOutputResponse, UpdateChannelOutputError>) -> Void)
    /// Updates an existing OriginEndpoint.
    func updateOriginEndpoint(input: UpdateOriginEndpointInput, completion: @escaping (SdkResult<UpdateOriginEndpointOutputResponse, UpdateOriginEndpointOutputError>) -> Void)
}
