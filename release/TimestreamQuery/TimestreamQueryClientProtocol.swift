// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
///
///         </p>
public protocol TimestreamQueryClientProtocol {
    /// <p>
    ///         Cancels a query that has been issued. Cancellation is guaranteed only if the query has not
    ///         completed execution before the cancellation request was issued. Because cancellation is an idempotent operation,
    ///         subsequent cancellation requests will return a <code>CancellationMessage</code>, indicating that the query has already been canceled.
    ///     </p>
    func cancelQuery(input: CancelQueryInput, completion: @escaping (SdkResult<CancelQueryOutputResponse, CancelQueryOutputError>) -> Void)
    /// <p>DescribeEndpoints returns a list of available endpoints to make Timestream API calls against.
    ///             This API is available through both Write and Query.</p>
    ///         <p>Because Timestream’s SDKs are designed to transparently work with the service’s architecture,
    ///             including the management and mapping of the service endpoints,
    ///             <i>it is not recommended that you use this API unless</i>:</p>
    ///         <ul>
    ///             <li>
    ///                <p>Your application uses a programming language that does not yet have SDK support</p>
    ///             </li>
    ///             <li>
    ///                <p>You require better control over the client-side implementation</p>
    ///             </li>
    ///          </ul>
    ///         <p>For detailed information on how to use DescribeEndpoints,
    ///             see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html">The Endpoint Discovery Pattern and REST APIs</a>.</p>
    func describeEndpoints(input: DescribeEndpointsInput, completion: @escaping (SdkResult<DescribeEndpointsOutputResponse, DescribeEndpointsOutputError>) -> Void)
    /// <p>
    ///             Query is a synchronous operation that enables you to execute a query. Query will timeout after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. The result set will be truncated to 1MB. Service quotas apply. For more information, see Quotas in the Timestream Developer Guide.
    ///         </p>
    func query(input: QueryInput, completion: @escaping (SdkResult<QueryOutputResponse, QueryOutputError>) -> Void)
}
