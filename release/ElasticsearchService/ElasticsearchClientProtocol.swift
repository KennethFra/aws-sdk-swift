// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>Amazon Elasticsearch Configuration Service</fullname>
///       <p>Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains.</p>
///       <p>For sample code that uses the Configuration API, see the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html">Amazon Elasticsearch Service Developer Guide</a>.
///       The guide also contains <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html">sample code for sending signed HTTP requests to the Elasticsearch APIs</a>.</p>
///       <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com.
///          For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
///          see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions" target="_blank">Regions and Endpoints</a>.</p>
public protocol ElasticsearchClientProtocol {
    /// <p>Allows the destination domain owner to accept an inbound cross-cluster search connection request.</p>
    func acceptInboundCrossClusterSearchConnection(input: AcceptInboundCrossClusterSearchConnectionInput, completion: @escaping (SdkResult<AcceptInboundCrossClusterSearchConnectionOutputResponse, AcceptInboundCrossClusterSearchConnectionOutputError>) -> Void)
    /// <p>Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags.  See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging" target="_blank">
    ///           Tagging Amazon Elasticsearch Service Domains for more information.</a></p>
    func addTags(input: AddTagsInput, completion: @escaping (SdkResult<AddTagsOutputResponse, AddTagsOutputError>) -> Void)
    /// <p>Associates a package with an Amazon ES domain.</p>
    func associatePackage(input: AssociatePackageInput, completion: @escaping (SdkResult<AssociatePackageOutputResponse, AssociatePackageOutputError>) -> Void)
    /// <p>Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the <code>AutomatedUpdateDate</code> and when the <code>UpdateStatus</code> is in the <code>PENDING_UPDATE</code> state.</p>
    func cancelElasticsearchServiceSoftwareUpdate(input: CancelElasticsearchServiceSoftwareUpdateInput, completion: @escaping (SdkResult<CancelElasticsearchServiceSoftwareUpdateOutputResponse, CancelElasticsearchServiceSoftwareUpdateOutputError>) -> Void)
    /// <p>Creates a new Elasticsearch domain. For more information,
    ///           see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    func createElasticsearchDomain(input: CreateElasticsearchDomainInput, completion: @escaping (SdkResult<CreateElasticsearchDomainOutputResponse, CreateElasticsearchDomainOutputError>) -> Void)
    /// <p>Creates a new cross-cluster search connection from a source domain to a destination domain.</p>
    func createOutboundCrossClusterSearchConnection(input: CreateOutboundCrossClusterSearchConnectionInput, completion: @escaping (SdkResult<CreateOutboundCrossClusterSearchConnectionOutputResponse, CreateOutboundCrossClusterSearchConnectionOutputError>) -> Void)
    /// <p>Create a package for use with Amazon ES domains.</p>
    func createPackage(input: CreatePackageInput, completion: @escaping (SdkResult<CreatePackageOutputResponse, CreatePackageOutputError>) -> Void)
    /// <p>Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.</p>
    func deleteElasticsearchDomain(input: DeleteElasticsearchDomainInput, completion: @escaping (SdkResult<DeleteElasticsearchDomainOutputResponse, DeleteElasticsearchDomainOutputError>) -> Void)
    /// <p>Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr" target="_blank">Deleting Elasticsearch Service Role</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i>.</p>
    func deleteElasticsearchServiceRole(input: DeleteElasticsearchServiceRoleInput, completion: @escaping (SdkResult<DeleteElasticsearchServiceRoleOutputResponse, DeleteElasticsearchServiceRoleOutputError>) -> Void)
    /// <p>Allows the destination domain owner to delete an existing inbound cross-cluster search connection.</p>
    func deleteInboundCrossClusterSearchConnection(input: DeleteInboundCrossClusterSearchConnectionInput, completion: @escaping (SdkResult<DeleteInboundCrossClusterSearchConnectionOutputResponse, DeleteInboundCrossClusterSearchConnectionOutputError>) -> Void)
    /// <p>Allows the source domain owner to delete an existing outbound cross-cluster search connection.</p>
    func deleteOutboundCrossClusterSearchConnection(input: DeleteOutboundCrossClusterSearchConnectionInput, completion: @escaping (SdkResult<DeleteOutboundCrossClusterSearchConnectionOutputResponse, DeleteOutboundCrossClusterSearchConnectionOutputError>) -> Void)
    /// <p>Delete the package.</p>
    func deletePackage(input: DeletePackageInput, completion: @escaping (SdkResult<DeletePackageOutputResponse, DeletePackageOutputError>) -> Void)
    /// <p>Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.</p>
    func describeDomainAutoTunes(input: DescribeDomainAutoTunesInput, completion: @escaping (SdkResult<DescribeDomainAutoTunesOutputResponse, DescribeDomainAutoTunesOutputError>) -> Void)
    /// <p>Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.</p>
    func describeElasticsearchDomain(input: DescribeElasticsearchDomainInput, completion: @escaping (SdkResult<DescribeElasticsearchDomainOutputResponse, DescribeElasticsearchDomainOutputError>) -> Void)
    /// <p>Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.</p>
    func describeElasticsearchDomainConfig(input: DescribeElasticsearchDomainConfigInput, completion: @escaping (SdkResult<DescribeElasticsearchDomainConfigOutputResponse, DescribeElasticsearchDomainConfigOutputError>) -> Void)
    /// <p>Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.</p>
    func describeElasticsearchDomains(input: DescribeElasticsearchDomainsInput, completion: @escaping (SdkResult<DescribeElasticsearchDomainsOutputResponse, DescribeElasticsearchDomainsOutputError>) -> Void)
    /// <p>
    ///     Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion.
    ///     When modifying existing Domain, specify the
    ///     <code>
    ///       <a>DomainName</a>
    ///     </code>
    ///     to know what Limits are supported for modifying.
    ///   </p>
    func describeElasticsearchInstanceTypeLimits(input: DescribeElasticsearchInstanceTypeLimitsInput, completion: @escaping (SdkResult<DescribeElasticsearchInstanceTypeLimitsOutputResponse, DescribeElasticsearchInstanceTypeLimitsOutputError>) -> Void)
    /// <p>Lists all the inbound cross-cluster search connections for a destination domain.</p>
    func describeInboundCrossClusterSearchConnections(input: DescribeInboundCrossClusterSearchConnectionsInput, completion: @escaping (SdkResult<DescribeInboundCrossClusterSearchConnectionsOutputResponse, DescribeInboundCrossClusterSearchConnectionsOutputError>) -> Void)
    /// <p>Lists all the outbound cross-cluster search connections for a source domain.</p>
    func describeOutboundCrossClusterSearchConnections(input: DescribeOutboundCrossClusterSearchConnectionsInput, completion: @escaping (SdkResult<DescribeOutboundCrossClusterSearchConnectionsOutputResponse, DescribeOutboundCrossClusterSearchConnectionsOutputError>) -> Void)
    /// <p>Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.</p>
    func describePackages(input: DescribePackagesInput, completion: @escaping (SdkResult<DescribePackagesOutputResponse, DescribePackagesOutputError>) -> Void)
    /// <p>Lists available reserved Elasticsearch instance offerings.</p>
    func describeReservedElasticsearchInstanceOfferings(input: DescribeReservedElasticsearchInstanceOfferingsInput, completion: @escaping (SdkResult<DescribeReservedElasticsearchInstanceOfferingsOutputResponse, DescribeReservedElasticsearchInstanceOfferingsOutputError>) -> Void)
    /// <p>Returns information about reserved Elasticsearch instances for this account.</p>
    func describeReservedElasticsearchInstances(input: DescribeReservedElasticsearchInstancesInput, completion: @escaping (SdkResult<DescribeReservedElasticsearchInstancesOutputResponse, DescribeReservedElasticsearchInstancesOutputError>) -> Void)
    /// <p>Dissociates a package from the Amazon ES domain.</p>
    func dissociatePackage(input: DissociatePackageInput, completion: @escaping (SdkResult<DissociatePackageOutputResponse, DissociatePackageOutputError>) -> Void)
    /// <p>
    ///         Returns a list of upgrade compatible Elastisearch versions.
    ///         You can optionally pass a
    ///         <code>
    ///           <a>DomainName</a>
    ///         </code>
    ///         to get all upgrade compatible Elasticsearch versions for that specific domain.
    ///       </p>
    func getCompatibleElasticsearchVersions(input: GetCompatibleElasticsearchVersionsInput, completion: @escaping (SdkResult<GetCompatibleElasticsearchVersionsOutputResponse, GetCompatibleElasticsearchVersionsOutputError>) -> Void)
    /// <p>Returns a list of versions of the package, along with their creation time and commit message.</p>
    func getPackageVersionHistory(input: GetPackageVersionHistoryInput, completion: @escaping (SdkResult<GetPackageVersionHistoryOutputResponse, GetPackageVersionHistoryOutputError>) -> Void)
    /// <p>Retrieves the complete history of the last 10 upgrades that were performed on the domain.</p>
    func getUpgradeHistory(input: GetUpgradeHistoryInput, completion: @escaping (SdkResult<GetUpgradeHistoryOutputResponse, GetUpgradeHistoryOutputError>) -> Void)
    /// <p>Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.</p>
    func getUpgradeStatus(input: GetUpgradeStatusInput, completion: @escaping (SdkResult<GetUpgradeStatusOutputResponse, GetUpgradeStatusOutputError>) -> Void)
    /// <p>Returns the name of all Elasticsearch domains owned by the current user's account. </p>
    func listDomainNames(input: ListDomainNamesInput, completion: @escaping (SdkResult<ListDomainNamesOutputResponse, ListDomainNamesOutputError>) -> Void)
    /// <p>Lists all Amazon ES domains associated with the package.</p>
    func listDomainsForPackage(input: ListDomainsForPackageInput, completion: @escaping (SdkResult<ListDomainsForPackageOutputResponse, ListDomainsForPackageOutputError>) -> Void)
    /// <p>List all Elasticsearch instance types that are supported for given ElasticsearchVersion</p>
    func listElasticsearchInstanceTypes(input: ListElasticsearchInstanceTypesInput, completion: @escaping (SdkResult<ListElasticsearchInstanceTypesOutputResponse, ListElasticsearchInstanceTypesOutputError>) -> Void)
    /// <p>List all supported Elasticsearch versions</p>
    func listElasticsearchVersions(input: ListElasticsearchVersionsInput, completion: @escaping (SdkResult<ListElasticsearchVersionsOutputResponse, ListElasticsearchVersionsOutputError>) -> Void)
    /// <p>Lists all packages associated with the Amazon ES domain.</p>
    func listPackagesForDomain(input: ListPackagesForDomainInput, completion: @escaping (SdkResult<ListPackagesForDomainOutputResponse, ListPackagesForDomainOutputError>) -> Void)
    /// <p>Returns all tags for the given Elasticsearch domain.</p>
    func listTags(input: ListTagsInput, completion: @escaping (SdkResult<ListTagsOutputResponse, ListTagsOutputError>) -> Void)
    /// <p>Allows you to purchase reserved Elasticsearch instances.</p>
    func purchaseReservedElasticsearchInstanceOffering(input: PurchaseReservedElasticsearchInstanceOfferingInput, completion: @escaping (SdkResult<PurchaseReservedElasticsearchInstanceOfferingOutputResponse, PurchaseReservedElasticsearchInstanceOfferingOutputError>) -> Void)
    /// <p>Allows the destination domain owner to reject an inbound cross-cluster search connection request.</p>
    func rejectInboundCrossClusterSearchConnection(input: RejectInboundCrossClusterSearchConnectionInput, completion: @escaping (SdkResult<RejectInboundCrossClusterSearchConnectionOutputResponse, RejectInboundCrossClusterSearchConnectionOutputError>) -> Void)
    /// <p>Removes the specified set of tags from the specified Elasticsearch domain.</p>
    func removeTags(input: RemoveTagsInput, completion: @escaping (SdkResult<RemoveTagsOutputResponse, RemoveTagsOutputError>) -> Void)
    /// <p>Schedules a service software update for an Amazon ES domain.</p>
    func startElasticsearchServiceSoftwareUpdate(input: StartElasticsearchServiceSoftwareUpdateInput, completion: @escaping (SdkResult<StartElasticsearchServiceSoftwareUpdateOutputResponse, StartElasticsearchServiceSoftwareUpdateOutputError>) -> Void)
    /// <p>Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. </p>
    func updateElasticsearchDomainConfig(input: UpdateElasticsearchDomainConfigInput, completion: @escaping (SdkResult<UpdateElasticsearchDomainConfigOutputResponse, UpdateElasticsearchDomainConfigOutputError>) -> Void)
    /// <p>Updates a package for use with Amazon ES domains.</p>
    func updatePackage(input: UpdatePackageInput, completion: @escaping (SdkResult<UpdatePackageOutputResponse, UpdatePackageOutputError>) -> Void)
    /// <p>Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.</p>
    func upgradeElasticsearchDomain(input: UpgradeElasticsearchDomainInput, completion: @escaping (SdkResult<UpgradeElasticsearchDomainOutputResponse, UpgradeElasticsearchDomainOutputError>) -> Void)
}
