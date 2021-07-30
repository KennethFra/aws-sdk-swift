// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS IoT Things Graph</fullname>
///          <p>AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards,
///        such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services
///        and defining how they interact at an abstract level.</p>
///          <p>For more information about how AWS IoT Things Graph works, see the <a href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html">User Guide</a>.</p>
public protocol IoTThingsGraphClientProtocol {
    /// <p>Associates a device with a concrete thing that is in the user's registry.</p>
    ///          <p>A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.</p>
    func associateEntityToThing(input: AssociateEntityToThingInput, completion: @escaping (SdkResult<AssociateEntityToThingOutputResponse, AssociateEntityToThingOutputError>) -> Void)
    /// <p>Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only
    ///          entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the
    ///       latest version of the user's namespace unless another namespace version is specified in the request.</p>
    func createFlowTemplate(input: CreateFlowTemplateInput, completion: @escaping (SdkResult<CreateFlowTemplateOutputResponse, CreateFlowTemplateOutputError>) -> Void)
    /// <p>Creates a system instance. </p>
    ///          <p>This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is
    ///             specified by the <code>greengrassGroupName</code> parameter. It also adds a file to the S3 bucket specified by the <code>s3BucketName</code> parameter. You need to
    ///             call <code>DeploySystemInstance</code> after running this action.</p>
    ///          <p>For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions
    ///          to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error.</p>
    ///          <p>For cloud deployments, this action requires a <code>flowActionsRoleArn</code> value. This is an IAM role
    ///       that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes.</p>
    ///          <p>If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.</p>
    func createSystemInstance(input: CreateSystemInstanceInput, completion: @escaping (SdkResult<CreateSystemInstanceOutputResponse, CreateSystemInstanceOutputError>) -> Void)
    /// <p>Creates a system. The system is validated against the entities in the
    ///          latest version of the user's namespace unless another namespace version is specified in the request.</p>
    func createSystemTemplate(input: CreateSystemTemplateInput, completion: @escaping (SdkResult<CreateSystemTemplateOutputResponse, CreateSystemTemplateOutputError>) -> Void)
    /// <p>Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy.
    ///          Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).</p>
    func deleteFlowTemplate(input: DeleteFlowTemplateInput, completion: @escaping (SdkResult<DeleteFlowTemplateOutputResponse, DeleteFlowTemplateOutputError>) -> Void)
    /// <p>Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.</p>
    func deleteNamespace(input: DeleteNamespaceInput, completion: @escaping (SdkResult<DeleteNamespaceOutputResponse, DeleteNamespaceOutputError>) -> Void)
    /// <p>Deletes a system instance.
    ///          Only system instances that have never been deployed, or that have been undeployed can be deleted.</p>
    ///          <p>Users can create a new system instance that has the same ID as a deleted system instance.</p>
    func deleteSystemInstance(input: DeleteSystemInstanceInput, completion: @escaping (SdkResult<DeleteSystemInstanceOutputResponse, DeleteSystemInstanceOutputError>) -> Void)
    /// <p>Deletes a system. New deployments can't contain the system after its deletion.
    ///       Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.</p>
    func deleteSystemTemplate(input: DeleteSystemTemplateInput, completion: @escaping (SdkResult<DeleteSystemTemplateOutputResponse, DeleteSystemTemplateOutputError>) -> Void)
    /// <p>
    ///             <b>Greengrass and Cloud Deployments</b>
    ///          </p>
    ///          <p>Deploys the system instance to the target specified in <code>CreateSystemInstance</code>. </p>
    ///          <p>
    ///             <b>Greengrass Deployments</b>
    ///          </p>
    ///          <p>If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service
    ///          resource file and then deploy it.</p>
    ///          <p>Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions
    ///          to the specified Greengrass group. Otherwise, the call will fail with an authorization error.</p>
    ///          <p>For information about the artifacts that get added to your Greengrass core device when you use this API, see <a href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html">AWS IoT Things Graph and AWS IoT Greengrass</a>.</p>
    func deploySystemInstance(input: DeploySystemInstanceInput, completion: @escaping (SdkResult<DeploySystemInstanceOutputResponse, DeploySystemInstanceOutputError>) -> Void)
    /// <p>Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.</p>
    func deprecateFlowTemplate(input: DeprecateFlowTemplateInput, completion: @escaping (SdkResult<DeprecateFlowTemplateOutputResponse, DeprecateFlowTemplateOutputError>) -> Void)
    /// <p>Deprecates the specified system.</p>
    func deprecateSystemTemplate(input: DeprecateSystemTemplateInput, completion: @escaping (SdkResult<DeprecateSystemTemplateOutputResponse, DeprecateSystemTemplateOutputError>) -> Void)
    /// <p>Gets the latest version of the user's namespace and the public version that it is tracking.</p>
    func describeNamespace(input: DescribeNamespaceInput, completion: @escaping (SdkResult<DescribeNamespaceOutputResponse, DescribeNamespaceOutputError>) -> Void)
    /// <p>Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only
    ///          one entity of a particular type can be associated with a thing.</p>
    func dissociateEntityFromThing(input: DissociateEntityFromThingInput, completion: @escaping (SdkResult<DissociateEntityFromThingOutputResponse, DissociateEntityFromThingOutputError>) -> Void)
    /// <p>Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the
    ///       following TDM entities.</p>
    ///          <ul>
    ///             <li>
    ///                <p>Properties</p>
    ///             </li>
    ///             <li>
    ///                <p>States</p>
    ///             </li>
    ///             <li>
    ///                <p>Events</p>
    ///             </li>
    ///             <li>
    ///                <p>Actions</p>
    ///             </li>
    ///             <li>
    ///                <p>Capabilities</p>
    ///             </li>
    ///             <li>
    ///                <p>Mappings</p>
    ///             </li>
    ///             <li>
    ///                <p>Devices</p>
    ///             </li>
    ///             <li>
    ///                <p>Device Models</p>
    ///             </li>
    ///             <li>
    ///                <p>Services</p>
    ///             </li>
    ///          </ul>
    ///          <p>This action doesn't return definitions for systems, flows, and deployments.</p>
    func getEntities(input: GetEntitiesInput, completion: @escaping (SdkResult<GetEntitiesOutputResponse, GetEntitiesOutputError>) -> Void)
    /// <p>Gets the latest version of the <code>DefinitionDocument</code> and <code>FlowTemplateSummary</code> for the specified workflow.</p>
    func getFlowTemplate(input: GetFlowTemplateInput, completion: @escaping (SdkResult<GetFlowTemplateOutputResponse, GetFlowTemplateOutputError>) -> Void)
    /// <p>Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated,
    ///       this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.</p>
    func getFlowTemplateRevisions(input: GetFlowTemplateRevisionsInput, completion: @escaping (SdkResult<GetFlowTemplateRevisionsOutputResponse, GetFlowTemplateRevisionsOutputError>) -> Void)
    /// <p>Gets the status of a namespace deletion task.</p>
    func getNamespaceDeletionStatus(input: GetNamespaceDeletionStatusInput, completion: @escaping (SdkResult<GetNamespaceDeletionStatusOutputResponse, GetNamespaceDeletionStatusOutputError>) -> Void)
    /// <p>Gets a system instance.</p>
    func getSystemInstance(input: GetSystemInstanceInput, completion: @escaping (SdkResult<GetSystemInstanceOutputResponse, GetSystemInstanceOutputError>) -> Void)
    /// <p>Gets a system.</p>
    func getSystemTemplate(input: GetSystemTemplateInput, completion: @escaping (SdkResult<GetSystemTemplateOutputResponse, GetSystemTemplateOutputError>) -> Void)
    /// <p>Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return
    ///       the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.</p>
    func getSystemTemplateRevisions(input: GetSystemTemplateRevisionsInput, completion: @escaping (SdkResult<GetSystemTemplateRevisionsOutputResponse, GetSystemTemplateRevisionsOutputError>) -> Void)
    /// <p>Gets the status of the specified upload.</p>
    func getUploadStatus(input: GetUploadStatusInput, completion: @escaping (SdkResult<GetUploadStatusOutputResponse, GetUploadStatusOutputError>) -> Void)
    /// <p>Returns a list of objects that contain information about events in a flow execution.</p>
    func listFlowExecutionMessages(input: ListFlowExecutionMessagesInput, completion: @escaping (SdkResult<ListFlowExecutionMessagesOutputResponse, ListFlowExecutionMessagesOutputError>) -> Void)
    /// <p>Lists all tags on an AWS IoT Things Graph resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.</p>
    func searchEntities(input: SearchEntitiesInput, completion: @escaping (SdkResult<SearchEntitiesOutputResponse, SearchEntitiesOutputError>) -> Void)
    /// <p>Searches for AWS IoT Things Graph workflow execution instances.</p>
    func searchFlowExecutions(input: SearchFlowExecutionsInput, completion: @escaping (SdkResult<SearchFlowExecutionsOutputResponse, SearchFlowExecutionsOutputError>) -> Void)
    /// <p>Searches for summary information about workflows.</p>
    func searchFlowTemplates(input: SearchFlowTemplatesInput, completion: @escaping (SdkResult<SearchFlowTemplatesOutputResponse, SearchFlowTemplatesOutputError>) -> Void)
    /// <p>Searches for system instances in the user's account.</p>
    func searchSystemInstances(input: SearchSystemInstancesInput, completion: @escaping (SdkResult<SearchSystemInstancesOutputResponse, SearchSystemInstancesOutputError>) -> Void)
    /// <p>Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.</p>
    func searchSystemTemplates(input: SearchSystemTemplatesInput, completion: @escaping (SdkResult<SearchSystemTemplatesOutputResponse, SearchSystemTemplatesOutputError>) -> Void)
    /// <p>Searches for things associated with the specified entity. You can search by both device and device model.</p>
    ///          <p>For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2.
    ///          <code>SearchThings(camera2)</code> will return only thing2, but <code>SearchThings(camera)</code> will return both thing1 and thing2.</p>
    ///          <p>This action searches for exact matches and doesn't perform partial text matching.</p>
    func searchThings(input: SearchThingsInput, completion: @escaping (SdkResult<SearchThingsOutputResponse, SearchThingsOutputError>) -> Void)
    /// <p>Creates a tag for the specified resource.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes a system instance from its target (Cloud or Greengrass).</p>
    func undeploySystemInstance(input: UndeploySystemInstanceInput, completion: @escaping (SdkResult<UndeploySystemInstanceOutputResponse, UndeploySystemInstanceOutputError>) -> Void)
    /// <p>Removes a tag from the specified resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this
    ///          behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. </p>
    func updateFlowTemplate(input: UpdateFlowTemplateInput, completion: @escaping (SdkResult<UpdateFlowTemplateOutputResponse, UpdateFlowTemplateOutputError>) -> Void)
    /// <p>Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.</p>
    func updateSystemTemplate(input: UpdateSystemTemplateInput, completion: @escaping (SdkResult<UpdateSystemTemplateOutputResponse, UpdateSystemTemplateOutputError>) -> Void)
    /// <p>Asynchronously uploads one or more entity definitions to the user's namespace. The <code>document</code> parameter is required if
    ///       <code>syncWithPublicNamespace</code> and <code>deleteExistingEntites</code> are false. If the <code>syncWithPublicNamespace</code> parameter  is set to
    ///          <code>true</code>, the user's namespace will synchronize with the latest version of the public namespace. If <code>deprecateExistingEntities</code> is set to true,
    ///       all entities in the latest version will be deleted before the new <code>DefinitionDocument</code> is uploaded.</p>
    ///          <p>When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users
    ///       can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the
    ///          <code>syncWithPublicNamespace</code> parameter or the <code>deprecateExistingEntities</code> parameter to <code>true</code>.</p>
    ///          <p>The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace.</p>
    ///          <p>Valid entities are <code>Device</code>, <code>DeviceModel</code>, <code>Service</code>, <code>Capability</code>, <code>State</code>, <code>Action</code>, <code>Event</code>, <code>Property</code>,
    ///          <code>Mapping</code>, <code>Enum</code>.
    ///          </p>
    func uploadEntityDefinitions(input: UploadEntityDefinitionsInput, completion: @escaping (SdkResult<UploadEntityDefinitionsOutputResponse, UploadEntityDefinitionsOutputError>) -> Void)
}
