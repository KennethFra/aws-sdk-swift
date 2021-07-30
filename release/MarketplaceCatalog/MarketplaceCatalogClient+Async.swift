// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MarketplaceCatalogClient {
    /// <p>Used to cancel an open change request. Must be sent before the status of the request
    ///             changes to <code>APPLYING</code>, the final stage of completing your change request. You
    ///             can describe a change during the 60-day request history retention period for API
    ///             calls.</p>
    func cancelChangeSet(input: CancelChangeSetInput) async throws -> CancelChangeSetOutputResponse
    {
        typealias cancelChangeSetContinuation = CheckedContinuation<CancelChangeSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelChangeSetContinuation) in
            cancelChangeSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Provides information about a given change set.</p>
    func describeChangeSet(input: DescribeChangeSetInput) async throws -> DescribeChangeSetOutputResponse
    {
        typealias describeChangeSetContinuation = CheckedContinuation<DescribeChangeSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeChangeSetContinuation) in
            describeChangeSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns the metadata and content of the entity.</p>
    func describeEntity(input: DescribeEntityInput) async throws -> DescribeEntityOutputResponse
    {
        typealias describeEntityContinuation = CheckedContinuation<DescribeEntityOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeEntityContinuation) in
            describeEntity(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns the list of change sets owned by the account being used to make the call. You
    ///             can filter this list by providing any combination of <code>entityId</code>,
    ///                 <code>ChangeSetName</code>, and status. If you provide more than one filter, the API
    ///             operation applies a logical AND between the filters.</p>
    ///
    ///         <p>You can describe a change during the 60-day request history retention period for API
    ///             calls.</p>
    func listChangeSets(input: ListChangeSetsInput) async throws -> ListChangeSetsOutputResponse
    {
        typealias listChangeSetsContinuation = CheckedContinuation<ListChangeSetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listChangeSetsContinuation) in
            listChangeSets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Provides the list of entities of a given type.</p>
    func listEntities(input: ListEntitiesInput) async throws -> ListEntitiesOutputResponse
    {
        typealias listEntitiesContinuation = CheckedContinuation<ListEntitiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEntitiesContinuation) in
            listEntities(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>This operation allows you to request changes for your entities. Within a single
    ///             ChangeSet, you cannot start the same change type against the same entity multiple times.
    ///             Additionally, when a ChangeSet is running, all the entities targeted by the different
    ///             changes are locked until the ChangeSet has completed (either succeeded, cancelled, or failed). If
    ///             you try to start a ChangeSet containing a change against an entity that is already
    ///             locked, you will receive a <code>ResourceInUseException</code>.</p>
    ///
    ///         <p>For example, you cannot start the ChangeSet described in the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples">example</a> later in this topic, because it contains two changes to execute the same change
    ///             type (<code>AddRevisions</code>) against the same entity
    ///             (<code>entity-id@1)</code>.</p>
    ///
    ///         <p>For more information about working with change sets, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">
    ///             Working with change sets</a>.</p>
    func startChangeSet(input: StartChangeSetInput) async throws -> StartChangeSetOutputResponse
    {
        typealias startChangeSetContinuation = CheckedContinuation<StartChangeSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startChangeSetContinuation) in
            startChangeSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
