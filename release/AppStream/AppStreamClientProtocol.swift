// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Amazon AppStream 2.0</fullname>
///         <p>This is the <i>Amazon AppStream 2.0 API Reference</i>. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand. </p>
///
///         <note>
///             <p>You can call the AppStream 2.0 API operations by using an interface VPC endpoint (interface endpoint). For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html">Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
///          </note>
///
///         <p>To learn more about AppStream 2.0, see the following resources:</p>
///
///             <ul>
///             <li>
///                <p>
///                   <a href="http://aws.amazon.com/appstream2">Amazon AppStream 2.0 product page</a>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <a href="http://aws.amazon.com/documentation/appstream2">Amazon AppStream 2.0 documentation</a>
///                </p>
///             </li>
///          </ul>
public protocol AppStreamClientProtocol {
    /// <p>Associates the specified fleet with the specified stack.</p>
    func associateFleet(input: AssociateFleetInput, completion: @escaping (SdkResult<AssociateFleetOutputResponse, AssociateFleetOutputError>) -> Void)
    /// <p>Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.</p>
    func batchAssociateUserStack(input: BatchAssociateUserStackInput, completion: @escaping (SdkResult<BatchAssociateUserStackOutputResponse, BatchAssociateUserStackOutputError>) -> Void)
    /// <p>Disassociates the specified users from the specified stacks.</p>
    func batchDisassociateUserStack(input: BatchDisassociateUserStackInput, completion: @escaping (SdkResult<BatchDisassociateUserStackOutputResponse, BatchDisassociateUserStackOutputError>) -> Void)
    /// <p>Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.</p>
    func copyImage(input: CopyImageInput, completion: @escaping (SdkResult<CopyImageOutputResponse, CopyImageOutputError>) -> Void)
    /// <p>Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    func createDirectoryConfig(input: CreateDirectoryConfigInput, completion: @escaping (SdkResult<CreateDirectoryConfigOutputResponse, CreateDirectoryConfigOutputError>) -> Void)
    /// <p>Creates a fleet. A fleet consists of streaming instances that run a specified image.</p>
    func createFleet(input: CreateFleetInput, completion: @escaping (SdkResult<CreateFleetOutputResponse, CreateFleetOutputError>) -> Void)
    /// <p>Creates an image builder. An image builder is a virtual machine that is used to create an image.</p>
    ///         <p>The initial state of the builder is <code>PENDING</code>. When it is ready, the state is <code>RUNNING</code>.</p>
    func createImageBuilder(input: CreateImageBuilderInput, completion: @escaping (SdkResult<CreateImageBuilderOutputResponse, CreateImageBuilderOutputError>) -> Void)
    /// <p>Creates a URL to start an image builder streaming session.</p>
    func createImageBuilderStreamingURL(input: CreateImageBuilderStreamingURLInput, completion: @escaping (SdkResult<CreateImageBuilderStreamingURLOutputResponse, CreateImageBuilderStreamingURLOutputError>) -> Void)
    /// <p>Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. </p>
    func createStack(input: CreateStackInput, completion: @escaping (SdkResult<CreateStackOutputResponse, CreateStackOutputError>) -> Void)
    /// <p>Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. </p>
    func createStreamingURL(input: CreateStreamingURLInput, completion: @escaping (SdkResult<CreateStreamingURLOutputResponse, CreateStreamingURLOutputError>) -> Void)
    /// <p>Creates a new image with the latest Windows operating system updates, driver updates, and AppStream 2.0 agent software.</p>
    ///
    ///         <p>For more information, see the "Update an Image by Using
    ///             Managed AppStream 2.0 Image Updates" section in <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html">Administer Your AppStream 2.0 Images</a>, in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    func createUpdatedImage(input: CreateUpdatedImageInput, completion: @escaping (SdkResult<CreateUpdatedImageOutputResponse, CreateUpdatedImageOutputError>) -> Void)
    /// <p>Creates a usage report subscription. Usage reports are generated daily.</p>
    func createUsageReportSubscription(input: CreateUsageReportSubscriptionInput, completion: @escaping (SdkResult<CreateUsageReportSubscriptionOutputResponse, CreateUsageReportSubscriptionOutputError>) -> Void)
    /// <p>Creates a new user in the user pool.</p>
    func createUser(input: CreateUserInput, completion: @escaping (SdkResult<CreateUserOutputResponse, CreateUserOutputError>) -> Void)
    /// <p>Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.</p>
    func deleteDirectoryConfig(input: DeleteDirectoryConfigInput, completion: @escaping (SdkResult<DeleteDirectoryConfigOutputResponse, DeleteDirectoryConfigOutputError>) -> Void)
    /// <p>Deletes the specified fleet.</p>
    func deleteFleet(input: DeleteFleetInput, completion: @escaping (SdkResult<DeleteFleetOutputResponse, DeleteFleetOutputError>) -> Void)
    /// <p>Deletes the specified image. You cannot delete an image when it is in use.
    ///             After you delete an image, you cannot provision new capacity using the image.</p>
    func deleteImage(input: DeleteImageInput, completion: @escaping (SdkResult<DeleteImageOutputResponse, DeleteImageOutputError>) -> Void)
    /// <p>Deletes the specified image builder and releases the capacity.</p>
    func deleteImageBuilder(input: DeleteImageBuilderInput, completion: @escaping (SdkResult<DeleteImageBuilderOutputResponse, DeleteImageBuilderOutputError>) -> Void)
    /// <p>Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.</p>
    func deleteImagePermissions(input: DeleteImagePermissionsInput, completion: @escaping (SdkResult<DeleteImagePermissionsOutputResponse, DeleteImagePermissionsOutputError>) -> Void)
    /// <p>Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.</p>
    func deleteStack(input: DeleteStackInput, completion: @escaping (SdkResult<DeleteStackOutputResponse, DeleteStackOutputError>) -> Void)
    /// <p>Disables usage report generation.</p>
    func deleteUsageReportSubscription(input: DeleteUsageReportSubscriptionInput, completion: @escaping (SdkResult<DeleteUsageReportSubscriptionOutputResponse, DeleteUsageReportSubscriptionOutputError>) -> Void)
    /// <p>Deletes a user from the user pool.</p>
    func deleteUser(input: DeleteUserInput, completion: @escaping (SdkResult<DeleteUserOutputResponse, DeleteUserOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains.
    ///         </p>
    ///         <p>Although the response syntax in this topic includes the account password, this password is not returned in the actual response.</p>
    func describeDirectoryConfigs(input: DescribeDirectoryConfigsInput, completion: @escaping (SdkResult<DescribeDirectoryConfigsOutputResponse, DescribeDirectoryConfigsOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.</p>
    func describeFleets(input: DescribeFleetsInput, completion: @escaping (SdkResult<DescribeFleetsOutputResponse, DescribeFleetsOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.</p>
    func describeImageBuilders(input: DescribeImageBuildersInput, completion: @escaping (SdkResult<DescribeImageBuildersOutputResponse, DescribeImageBuildersOutputError>) -> Void)
    /// <p>Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. </p>
    func describeImagePermissions(input: DescribeImagePermissionsInput, completion: @escaping (SdkResult<DescribeImagePermissionsOutputResponse, DescribeImagePermissionsOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.</p>
    func describeImages(input: DescribeImagesInput, completion: @escaping (SdkResult<DescribeImagesOutputResponse, DescribeImagesOutputError>) -> Void)
    /// <p>Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet,
    ///             only streaming sessions for that user are described. If an authentication type is not provided,
    ///             the default is to authenticate users using a streaming URL.</p>
    func describeSessions(input: DescribeSessionsInput, completion: @escaping (SdkResult<DescribeSessionsOutputResponse, DescribeSessionsOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.</p>
    func describeStacks(input: DescribeStacksInput, completion: @escaping (SdkResult<DescribeStacksOutputResponse, DescribeStacksOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more usage report subscriptions.</p>
    func describeUsageReportSubscriptions(input: DescribeUsageReportSubscriptionsInput, completion: @escaping (SdkResult<DescribeUsageReportSubscriptionsOutputResponse, DescribeUsageReportSubscriptionsOutputError>) -> Void)
    /// <p>Retrieves a list that describes one or more specified users in the user pool.</p>
    func describeUsers(input: DescribeUsersInput, completion: @escaping (SdkResult<DescribeUsersOutputResponse, DescribeUsersOutputError>) -> Void)
    /// <p>Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:</p>
    ///         <ul>
    ///             <li>
    ///                <p>The stack name</p>
    ///             </li>
    ///             <li>
    ///                <p>The user name (email address of the user associated with the stack) and the authentication type for the user</p>
    ///             </li>
    ///          </ul>
    func describeUserStackAssociations(input: DescribeUserStackAssociationsInput, completion: @escaping (SdkResult<DescribeUserStackAssociationsOutputResponse, DescribeUserStackAssociationsOutputError>) -> Void)
    /// <p>Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. </p>
    func disableUser(input: DisableUserInput, completion: @escaping (SdkResult<DisableUserOutputResponse, DisableUserOutputError>) -> Void)
    /// <p>Disassociates the specified fleet from the specified stack.</p>
    func disassociateFleet(input: DisassociateFleetInput, completion: @escaping (SdkResult<DisassociateFleetOutputResponse, DisassociateFleetOutputError>) -> Void)
    /// <p>Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.</p>
    func enableUser(input: EnableUserInput, completion: @escaping (SdkResult<EnableUserOutputResponse, EnableUserOutputError>) -> Void)
    /// <p>Immediately stops the specified streaming session.</p>
    func expireSession(input: ExpireSessionInput, completion: @escaping (SdkResult<ExpireSessionOutputResponse, ExpireSessionOutputError>) -> Void)
    /// <p>Retrieves the name of the fleet that is associated with the specified stack.</p>
    func listAssociatedFleets(input: ListAssociatedFleetsInput, completion: @escaping (SdkResult<ListAssociatedFleetsOutputResponse, ListAssociatedFleetsOutputError>) -> Void)
    /// <p>Retrieves the name of the stack with which the specified fleet is associated.</p>
    func listAssociatedStacks(input: ListAssociatedStacksInput, completion: @escaping (SdkResult<ListAssociatedStacksOutputResponse, ListAssociatedStacksOutputError>) -> Void)
    /// <p>Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p>
    ///         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Starts the specified fleet.</p>
    func startFleet(input: StartFleetInput, completion: @escaping (SdkResult<StartFleetOutputResponse, StartFleetOutputError>) -> Void)
    /// <p>Starts the specified image builder.</p>
    func startImageBuilder(input: StartImageBuilderInput, completion: @escaping (SdkResult<StartImageBuilderOutputResponse, StartImageBuilderOutputError>) -> Void)
    /// <p>Stops the specified fleet.</p>
    func stopFleet(input: StopFleetInput, completion: @escaping (SdkResult<StopFleetOutputResponse, StopFleetOutputError>) -> Void)
    /// <p>Stops the specified image builder.</p>
    func stopImageBuilder(input: StopImageBuilderInput, completion: @escaping (SdkResult<StopImageBuilderOutputResponse, StopImageBuilderOutputError>) -> Void)
    /// <p>Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p>
    ///             <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key,
    ///                 this operation updates its value.</p>
    ///
    ///             <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.
    ///                 To disassociate tags from your resources, use <a>UntagResource</a>.</p>
    ///         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Disassociates one or more specified tags from the specified AppStream 2.0 resource.</p>
    ///         <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.</p>
    ///         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    func updateDirectoryConfig(input: UpdateDirectoryConfigInput, completion: @escaping (SdkResult<UpdateDirectoryConfigOutputResponse, UpdateDirectoryConfigOutputError>) -> Void)
    /// <p>Updates the specified fleet.</p>
    ///         <p>If the fleet is in the <code>STOPPED</code> state, you can update any attribute except the fleet name.
    ///             If the fleet is in the <code>RUNNING</code> state, you can update the <code>DisplayName</code>, <code>ComputeCapacity</code>, <code>ImageARN</code>, <code>ImageName</code>, <code>IdleDisconnectTimeoutInSeconds</code>, and <code>DisconnectTimeoutInSeconds</code> attributes.
    ///             If the fleet is in the <code>STARTING</code> or <code>STOPPING</code> state, you can't update it.</p>
    func updateFleet(input: UpdateFleetInput, completion: @escaping (SdkResult<UpdateFleetOutputResponse, UpdateFleetOutputError>) -> Void)
    /// <p>Adds or updates permissions for the specified private image. </p>
    func updateImagePermissions(input: UpdateImagePermissionsInput, completion: @escaping (SdkResult<UpdateImagePermissionsOutputResponse, UpdateImagePermissionsOutputError>) -> Void)
    /// <p>Updates the specified fields for the specified stack.</p>
    func updateStack(input: UpdateStackInput, completion: @escaping (SdkResult<UpdateStackOutputResponse, UpdateStackOutputError>) -> Void)
}
