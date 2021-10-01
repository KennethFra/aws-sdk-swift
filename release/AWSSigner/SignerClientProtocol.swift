// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Signer is a fully managed code signing service to help you ensure the trust and
/// 			integrity of your code.
/// 		       AWS Signer supports the following applications:
///
/// 		       With code signing for AWS Lambda, you can sign AWS Lambda
/// 			deployment packages. Integrated support is provided for Amazon S3, Amazon CloudWatch,
/// 			and AWS CloudTrail. In order to sign code, you create a signing profile and then use
/// 			Signer to sign Lambda zip files in S3.
/// 		
/// 		       With code signing for IoT, you can sign code for any IoT device that is
/// 			supported by AWS. IoT code signing is available for <a href="http://docs.aws.amazon.com/freertos/latest/userguide/">Amazon FreeRTOS and <a href="http://docs.aws.amazon.com/iot/latest/developerguide/">AWS IoT Device Management, and is
/// 			integrated with <a href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager (ACM). In order to sign
/// 			code, you import a third-party code signing certificate using ACM, and use that to
/// 			sign updates in Amazon FreeRTOS and AWS IoT Device Management.
/// 		       For more information about AWS Signer, see the <a href="http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html">AWS Signer Developer Guide.
/// 		
/// 		
public protocol SignerClientProtocol {
    /// Adds cross-account permissions to a signing profile.
    func addProfilePermission(input: AddProfilePermissionInput, completion: @escaping (ClientRuntime.SdkResult<AddProfilePermissionOutputResponse, AddProfilePermissionOutputError>) -> Void)
    /// Changes the state of an ACTIVE signing profile to CANCELED.
    /// 			A canceled profile is still viewable with the ListSigningProfiles
    /// 			operation, but it cannot perform new signing jobs, and is deleted two years after
    /// 			cancelation.
    func cancelSigningProfile(input: CancelSigningProfileInput, completion: @escaping (ClientRuntime.SdkResult<CancelSigningProfileOutputResponse, CancelSigningProfileOutputError>) -> Void)
    /// Returns information about a specific code signing job. You specify the job by using
    /// 			the jobId value that is returned by the StartSigningJob
    /// 			operation.
    func describeSigningJob(input: DescribeSigningJobInput, completion: @escaping (ClientRuntime.SdkResult<DescribeSigningJobOutputResponse, DescribeSigningJobOutputError>) -> Void)
    /// Returns information on a specific signing platform.
    func getSigningPlatform(input: GetSigningPlatformInput, completion: @escaping (ClientRuntime.SdkResult<GetSigningPlatformOutputResponse, GetSigningPlatformOutputError>) -> Void)
    /// Returns information on a specific signing profile.
    func getSigningProfile(input: GetSigningProfileInput, completion: @escaping (ClientRuntime.SdkResult<GetSigningProfileOutputResponse, GetSigningProfileOutputError>) -> Void)
    /// Lists the cross-account permissions associated with a signing profile.
    func listProfilePermissions(input: ListProfilePermissionsInput, completion: @escaping (ClientRuntime.SdkResult<ListProfilePermissionsOutputResponse, ListProfilePermissionsOutputError>) -> Void)
    /// Lists all your signing jobs. You can use the maxResults parameter to
    /// 			limit the number of signing jobs that are returned in the response. If additional jobs
    /// 			remain to be listed, code signing returns a nextToken value. Use this value in
    /// 			subsequent calls to ListSigningJobs to fetch the remaining values. You can
    /// 			continue calling ListSigningJobs with your maxResults
    /// 			parameter and with new values that code signing returns in the nextToken
    /// 			parameter until all of your signing jobs have been returned.
    func listSigningJobs(input: ListSigningJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListSigningJobsOutputResponse, ListSigningJobsOutputError>) -> Void)
    /// Lists all signing platforms available in code signing that match the request parameters. If
    /// 			additional jobs remain to be listed, code signing returns a nextToken value. Use
    /// 			this value in subsequent calls to ListSigningJobs to fetch the remaining
    /// 			values. You can continue calling ListSigningJobs with your
    /// 				maxResults parameter and with new values that code signing returns in the
    /// 				nextToken parameter until all of your signing jobs have been
    /// 			returned.
    func listSigningPlatforms(input: ListSigningPlatformsInput, completion: @escaping (ClientRuntime.SdkResult<ListSigningPlatformsOutputResponse, ListSigningPlatformsOutputError>) -> Void)
    /// Lists all available signing profiles in your AWS account. Returns only profiles with
    /// 			an ACTIVE status unless the includeCanceled request field is
    /// 			set to true. If additional jobs remain to be listed, code signing returns a
    /// 				nextToken value. Use this value in subsequent calls to
    /// 				ListSigningJobs to fetch the remaining values. You can continue calling
    /// 				ListSigningJobs with your maxResults parameter and with
    /// 			new values that code signing returns in the nextToken parameter until all of your
    /// 			signing jobs have been returned.
    func listSigningProfiles(input: ListSigningProfilesInput, completion: @escaping (ClientRuntime.SdkResult<ListSigningProfilesOutputResponse, ListSigningProfilesOutputError>) -> Void)
    /// Returns a list of the tags associated with a signing profile resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Creates a signing profile. A signing profile is a code signing template that can be used to
    /// 			carry out a pre-defined signing job. For more information, see <a href="http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html">http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html
    ///
    func putSigningProfile(input: PutSigningProfileInput, completion: @escaping (ClientRuntime.SdkResult<PutSigningProfileOutputResponse, PutSigningProfileOutputError>) -> Void)
    /// Removes cross-account permissions from a signing profile.
    func removeProfilePermission(input: RemoveProfilePermissionInput, completion: @escaping (ClientRuntime.SdkResult<RemoveProfilePermissionOutputResponse, RemoveProfilePermissionOutputError>) -> Void)
    /// Changes the state of a signing job to REVOKED. This indicates that the signature is no
    /// 			longer valid.
    func revokeSignature(input: RevokeSignatureInput, completion: @escaping (ClientRuntime.SdkResult<RevokeSignatureOutputResponse, RevokeSignatureOutputError>) -> Void)
    /// Changes the state of a signing profile to REVOKED. This indicates that signatures
    /// 			generated using the signing profile after an effective start date are no longer
    /// 			valid.
    func revokeSigningProfile(input: RevokeSigningProfileInput, completion: @escaping (ClientRuntime.SdkResult<RevokeSigningProfileOutputResponse, RevokeSigningProfileOutputError>) -> Void)
    /// Initiates a signing job to be performed on the code provided. Signing jobs are
    /// 			viewable by the ListSigningJobs operation for two years after they are
    /// 			performed. Note the following requirements:
    /// 		
    ///
    /// 				            You must create an Amazon S3 source bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html">Create a Bucket in the
    /// 						Amazon S3 Getting Started Guide.
    /// 			
    ///
    /// 				           Your S3 source bucket must be version enabled.
    /// 			
    ///
    /// 				           You must create an S3 destination bucket. Code signing uses your S3 destination
    /// 					bucket to write your signed code.
    /// 			
    ///
    /// 				           You specify the name of the source and destination buckets when calling the
    /// 						StartSigningJob operation.
    /// 			
    ///
    /// 				           You must also specify a request token that identifies your request to
    /// 					code signing.
    /// 			
    ///
    /// 		       You can call the DescribeSigningJob and the ListSigningJobs actions after you call
    /// 			StartSigningJob.
    /// 		       For a Java example that shows how to use this action, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/">http://docs.aws.amazon.com/acm/latest/userguide/
    ///
    func startSigningJob(input: StartSigningJobInput, completion: @escaping (ClientRuntime.SdkResult<StartSigningJobOutputResponse, StartSigningJobOutputError>) -> Void)
    /// Adds one or more tags to a signing profile. Tags are labels that you can use to
    /// 			identify and organize your AWS resources. Each tag consists of a key and an optional
    /// 			value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify
    /// 			the tag, use a key-value pair.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes one or more tags from a signing profile. To remove the tags, specify a list of
    /// 			tag keys.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
}

public enum SignerClientTypes {}
