// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the Resource Access Manager API Reference. This documentation provides descriptions and syntax for each of the actions and data types in RAM. RAM is a service that helps you securely share your Amazon Web Services resources across Amazon Web Services accounts and within your organization or organizational units (OUs) in Organizations. For supported resource types, you can also share resources with IAM roles and IAM users. If you have multiple Amazon Web Services accounts, you can use RAM to share those resources with other accounts. To learn more about RAM, see the following resources:
///
/// * [Resource Access Manager product page](http://aws.amazon.com/ram)
///
/// * [Resource Access Manager User Guide](https://docs.aws.amazon.com/ram/latest/userguide/)
public protocol RamClientProtocol {
    /// Accepts an invitation to a resource share from another Amazon Web Services account.
    func acceptResourceShareInvitation(input: AcceptResourceShareInvitationInput, completion: @escaping (ClientRuntime.SdkResult<AcceptResourceShareInvitationOutputResponse, AcceptResourceShareInvitationOutputError>) -> Void)
    /// Associates the specified resource share with the specified principals and resources.
    func associateResourceShare(input: AssociateResourceShareInput, completion: @escaping (ClientRuntime.SdkResult<AssociateResourceShareOutputResponse, AssociateResourceShareOutputError>) -> Void)
    /// Associates a permission with a resource share.
    func associateResourceSharePermission(input: AssociateResourceSharePermissionInput, completion: @escaping (ClientRuntime.SdkResult<AssociateResourceSharePermissionOutputResponse, AssociateResourceSharePermissionOutputError>) -> Void)
    /// Creates a resource share. You must provide a list of the Amazon Resource Names (ARNs) for the resources you want to share. You must also specify who you want to share the resources with, and the permissions that you grant them. Sharing a resource makes it available for use by principals outside of the Amazon Web Services account that created the resource. Sharing doesn't change any permissions or quotas that apply to the resource in the account that created it.
    func createResourceShare(input: CreateResourceShareInput, completion: @escaping (ClientRuntime.SdkResult<CreateResourceShareOutputResponse, CreateResourceShareOutputError>) -> Void)
    /// Deletes the specified resource share.
    func deleteResourceShare(input: DeleteResourceShareInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourceShareOutputResponse, DeleteResourceShareOutputError>) -> Void)
    /// Disassociates the specified principals or resources from the specified resource share.
    func disassociateResourceShare(input: DisassociateResourceShareInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateResourceShareOutputResponse, DisassociateResourceShareOutputError>) -> Void)
    /// Disassociates an RAM permission from a resource share.
    func disassociateResourceSharePermission(input: DisassociateResourceSharePermissionInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateResourceSharePermissionOutputResponse, DisassociateResourceSharePermissionOutputError>) -> Void)
    /// Enables resource sharing within your organization in Organizations. The caller must be the master account for the organization.
    func enableSharingWithAwsOrganization(input: EnableSharingWithAwsOrganizationInput, completion: @escaping (ClientRuntime.SdkResult<EnableSharingWithAwsOrganizationOutputResponse, EnableSharingWithAwsOrganizationOutputError>) -> Void)
    /// Gets the contents of an RAM permission in JSON format.
    func getPermission(input: GetPermissionInput, completion: @escaping (ClientRuntime.SdkResult<GetPermissionOutputResponse, GetPermissionOutputError>) -> Void)
    /// Gets the policies for the specified resources that you own and have shared.
    func getResourcePolicies(input: GetResourcePoliciesInput, completion: @escaping (ClientRuntime.SdkResult<GetResourcePoliciesOutputResponse, GetResourcePoliciesOutputError>) -> Void)
    /// Gets the resources or principals for the resource shares that you own.
    func getResourceShareAssociations(input: GetResourceShareAssociationsInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceShareAssociationsOutputResponse, GetResourceShareAssociationsOutputError>) -> Void)
    /// Gets the invitations that you have received for resource shares.
    func getResourceShareInvitations(input: GetResourceShareInvitationsInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceShareInvitationsOutputResponse, GetResourceShareInvitationsOutputError>) -> Void)
    /// Gets the resource shares that you own or the resource shares that are shared with you.
    func getResourceShares(input: GetResourceSharesInput, completion: @escaping (ClientRuntime.SdkResult<GetResourceSharesOutputResponse, GetResourceSharesOutputError>) -> Void)
    /// Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    func listPendingInvitationResources(input: ListPendingInvitationResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListPendingInvitationResourcesOutputResponse, ListPendingInvitationResourcesOutputError>) -> Void)
    /// Lists the RAM permissions.
    func listPermissions(input: ListPermissionsInput, completion: @escaping (ClientRuntime.SdkResult<ListPermissionsOutputResponse, ListPermissionsOutputError>) -> Void)
    /// Lists the principals that you have shared resources with or that have shared resources with you.
    func listPrincipals(input: ListPrincipalsInput, completion: @escaping (ClientRuntime.SdkResult<ListPrincipalsOutputResponse, ListPrincipalsOutputError>) -> Void)
    /// Lists the resources that you added to a resource shares or the resources that are shared with you.
    func listResources(input: ListResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListResourcesOutputResponse, ListResourcesOutputError>) -> Void)
    /// Lists the RAM permissions that are associated with a resource share.
    func listResourceSharePermissions(input: ListResourceSharePermissionsInput, completion: @escaping (ClientRuntime.SdkResult<ListResourceSharePermissionsOutputResponse, ListResourceSharePermissionsOutputError>) -> Void)
    /// Lists the shareable resource types supported by RAM.
    func listResourceTypes(input: ListResourceTypesInput, completion: @escaping (ClientRuntime.SdkResult<ListResourceTypesOutputResponse, ListResourceTypesOutputError>) -> Void)
    /// Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:
    ///
    /// * Visible to all principals that it is shared with.
    ///
    /// * Modifiable in RAM.
    func promoteResourceShareCreatedFromPolicy(input: PromoteResourceShareCreatedFromPolicyInput, completion: @escaping (ClientRuntime.SdkResult<PromoteResourceShareCreatedFromPolicyOutputResponse, PromoteResourceShareCreatedFromPolicyOutputError>) -> Void)
    /// Rejects an invitation to a resource share from another Amazon Web Services account.
    func rejectResourceShareInvitation(input: RejectResourceShareInvitationInput, completion: @escaping (ClientRuntime.SdkResult<RejectResourceShareInvitationOutputResponse, RejectResourceShareInvitationOutputError>) -> Void)
    /// Adds the specified tags to the specified resource share that you own.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes the specified tags from the specified resource share that you own.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates the specified resource share that you own.
    func updateResourceShare(input: UpdateResourceShareInput, completion: @escaping (ClientRuntime.SdkResult<UpdateResourceShareOutputResponse, UpdateResourceShareOutputError>) -> Void)
}

public enum RamClientTypes {}
