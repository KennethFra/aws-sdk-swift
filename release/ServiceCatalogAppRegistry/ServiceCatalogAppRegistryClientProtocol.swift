// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p> AWS Service Catalog AppRegistry enables organizations to understand the application context of their AWS resources. AppRegistry provides a repository of your applications, their resources, and the application metadata that you use within your enterprise.</p>
public protocol ServiceCatalogAppRegistryClientProtocol {
    /// <p>Associates an attribute group with an application to augment the application's metadata
    ///       with the group's attributes. This feature enables applications to be described with
    ///       user-defined details that are machine-readable, such as third-party integrations.</p>
    func associateAttributeGroup(input: AssociateAttributeGroupInput, completion: @escaping (SdkResult<AssociateAttributeGroupOutputResponse, AssociateAttributeGroupOutputError>) -> Void)
    /// <p>Associates a resource with an application. Both the resource and the application can be specified either by ID or name.</p>
    func associateResource(input: AssociateResourceInput, completion: @escaping (SdkResult<AssociateResourceOutputResponse, AssociateResourceOutputError>) -> Void)
    /// <p>Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.</p>
    func createApplication(input: CreateApplicationInput, completion: @escaping (SdkResult<CreateApplicationOutputResponse, CreateApplicationOutputError>) -> Void)
    /// <p>Creates a new attribute group as a container for user-defined attributes. This feature
    ///       enables users to have full control over their cloud application's metadata in a rich
    ///       machine-readable format to facilitate integration with automated workflows and third-party
    ///       tools.</p>
    func createAttributeGroup(input: CreateAttributeGroupInput, completion: @escaping (SdkResult<CreateAttributeGroupOutputResponse, CreateAttributeGroupOutputError>) -> Void)
    /// <p>Deletes an application that is specified either by its application ID or name. All associated attribute groups and resources must be disassociated from it before deleting an application.</p>
    func deleteApplication(input: DeleteApplicationInput, completion: @escaping (SdkResult<DeleteApplicationOutputResponse, DeleteApplicationOutputError>) -> Void)
    /// <p>Deletes an attribute group, specified either by its attribute group ID or name.</p>
    func deleteAttributeGroup(input: DeleteAttributeGroupInput, completion: @escaping (SdkResult<DeleteAttributeGroupOutputResponse, DeleteAttributeGroupOutputError>) -> Void)
    /// <p>Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts <code>AssociateAttributeGroup</code>.</p>
    func disassociateAttributeGroup(input: DisassociateAttributeGroupInput, completion: @escaping (SdkResult<DisassociateAttributeGroupOutputResponse, DisassociateAttributeGroupOutputError>) -> Void)
    /// <p>Disassociates a resource from application. Both the resource and the application can be specified either by ID or name.</p>
    func disassociateResource(input: DisassociateResourceInput, completion: @escaping (SdkResult<DisassociateResourceOutputResponse, DisassociateResourceOutputError>) -> Void)
    /// <p>Retrieves metadata information about one of your applications. The application can be specified either by its unique ID or by its name (which is unique within one account in one region at a given point in time). Specify by ID in automated workflows if you want to make sure that the exact same application is returned or a <code>ResourceNotFoundException</code> is thrown, avoiding the ABA addressing problem.</p>
    func getApplication(input: GetApplicationInput, completion: @escaping (SdkResult<GetApplicationOutputResponse, GetApplicationOutputError>) -> Void)
    /// <p>Retrieves an attribute group, either by its name or its ID. The attribute group can be specified either by its unique ID or by its name.</p>
    func getAttributeGroup(input: GetAttributeGroupInput, completion: @escaping (SdkResult<GetAttributeGroupOutputResponse, GetAttributeGroupOutputError>) -> Void)
    /// <p>Retrieves a list of all of your applications. Results are paginated.</p>
    func listApplications(input: ListApplicationsInput, completion: @escaping (SdkResult<ListApplicationsOutputResponse, ListApplicationsOutputError>) -> Void)
    /// <p>Lists all attribute groups that are associated with specified application.  Results are paginated.</p>
    func listAssociatedAttributeGroups(input: ListAssociatedAttributeGroupsInput, completion: @escaping (SdkResult<ListAssociatedAttributeGroupsOutputResponse, ListAssociatedAttributeGroupsOutputError>) -> Void)
    /// <p>Lists all resources that are associated with specified application. Results are paginated.</p>
    func listAssociatedResources(input: ListAssociatedResourcesInput, completion: @escaping (SdkResult<ListAssociatedResourcesOutputResponse, ListAssociatedResourcesOutputError>) -> Void)
    /// <p>Lists all attribute groups which you have access to. Results are paginated.</p>
    func listAttributeGroups(input: ListAttributeGroupsInput, completion: @escaping (SdkResult<ListAttributeGroupsOutputResponse, ListAttributeGroupsOutputError>) -> Void)
    /// <p>Lists all of the tags on the resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Syncs the resource with what is currently recorded in App registry. Specifically, the resource’s App registry system tags are synced with its associated application. The resource is removed if it is not associated with the application. The caller must have permissions to read and update the resource.</p>
    func syncResource(input: SyncResourceInput, completion: @escaping (SdkResult<SyncResourceOutputResponse, SyncResourceOutputError>) -> Void)
    /// <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    ///          <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>
    ///          <p>This operation returns an empty response if the call was successful.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes tags from a resource.</p>
    ///          <p>This operation returns an empty response if the call was successful.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates an existing application with new attributes.</p>
    func updateApplication(input: UpdateApplicationInput, completion: @escaping (SdkResult<UpdateApplicationOutputResponse, UpdateApplicationOutputError>) -> Void)
    /// <p>Updates an existing attribute group with new details. </p>
    func updateAttributeGroup(input: UpdateAttributeGroupInput, completion: @escaping (SdkResult<UpdateAttributeGroupOutputResponse, UpdateAttributeGroupOutputError>) -> Void)
}
