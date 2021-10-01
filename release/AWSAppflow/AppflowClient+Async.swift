// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AppflowClient {
    ///  Creates a new connector profile associated with your Amazon Web Services account. There is a soft quota
    ///       of 100 connector profiles per Amazon Web Services account. If you need more connector profiles than this quota
    ///       allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support
    ///       channel.
    func createConnectorProfile(input: CreateConnectorProfileInput) async throws -> CreateConnectorProfileOutputResponse
    {
        typealias createConnectorProfileContinuation = CheckedContinuation<CreateConnectorProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConnectorProfileContinuation) in
            createConnectorProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Enables your application to create a new flow using Amazon AppFlow. You must create a
    ///       connector profile before calling this API. Please note that the Request Syntax below shows
    ///       syntax for multiple destinations, however, you can only transfer data to one item in this list
    ///       at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    func createFlow(input: CreateFlowInput) async throws -> CreateFlowOutputResponse
    {
        typealias createFlowContinuation = CheckedContinuation<CreateFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createFlowContinuation) in
            createFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Enables you to delete an existing connector profile.
    func deleteConnectorProfile(input: DeleteConnectorProfileInput) async throws -> DeleteConnectorProfileOutputResponse
    {
        typealias deleteConnectorProfileContinuation = CheckedContinuation<DeleteConnectorProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConnectorProfileContinuation) in
            deleteConnectorProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Enables your application to delete an existing flow. Before deleting the flow, Amazon
    ///       AppFlow validates the request by checking the flow configuration and status. You can delete
    ///       flows one at a time.
    func deleteFlow(input: DeleteFlowInput) async throws -> DeleteFlowOutputResponse
    {
        typealias deleteFlowContinuation = CheckedContinuation<DeleteFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteFlowContinuation) in
            deleteFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Provides details regarding the entity used with the connector, with a description of the
    ///       data model for each entity.
    func describeConnectorEntity(input: DescribeConnectorEntityInput) async throws -> DescribeConnectorEntityOutputResponse
    {
        typealias describeConnectorEntityContinuation = CheckedContinuation<DescribeConnectorEntityOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConnectorEntityContinuation) in
            describeConnectorEntity(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Returns a list of connector-profile details matching the provided
    ///         connector-profile names and connector-types. Both input lists are
    ///       optional, and you can use them to filter the result.
    ///          If no names or connector-types are provided, returns all connector profiles
    ///       in a paginated form. If there is no match, this operation returns an empty list.
    func describeConnectorProfiles(input: DescribeConnectorProfilesInput) async throws -> DescribeConnectorProfilesOutputResponse
    {
        typealias describeConnectorProfilesContinuation = CheckedContinuation<DescribeConnectorProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConnectorProfilesContinuation) in
            describeConnectorProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Describes the connectors vended by Amazon AppFlow for specified connector types. If you
    ///       don't specify a connector type, this operation describes all connectors vended by Amazon
    ///       AppFlow. If there are more connectors than can be returned in one page, the response contains
    ///       a nextToken object, which can be be passed in to the next call to the
    ///         DescribeConnectors API operation to retrieve the next page.
    func describeConnectors(input: DescribeConnectorsInput) async throws -> DescribeConnectorsOutputResponse
    {
        typealias describeConnectorsContinuation = CheckedContinuation<DescribeConnectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConnectorsContinuation) in
            describeConnectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Provides a description of the specified flow.
    func describeFlow(input: DescribeFlowInput) async throws -> DescribeFlowOutputResponse
    {
        typealias describeFlowContinuation = CheckedContinuation<DescribeFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFlowContinuation) in
            describeFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Fetches the execution history of the flow.
    func describeFlowExecutionRecords(input: DescribeFlowExecutionRecordsInput) async throws -> DescribeFlowExecutionRecordsOutputResponse
    {
        typealias describeFlowExecutionRecordsContinuation = CheckedContinuation<DescribeFlowExecutionRecordsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFlowExecutionRecordsContinuation) in
            describeFlowExecutionRecords(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Returns the list of available connector entities supported by Amazon AppFlow. For
    ///       example, you can query Salesforce for Account and
    ///         Opportunity entities, or query ServiceNow for the
    ///         Incident entity.
    func listConnectorEntities(input: ListConnectorEntitiesInput) async throws -> ListConnectorEntitiesOutputResponse
    {
        typealias listConnectorEntitiesContinuation = CheckedContinuation<ListConnectorEntitiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConnectorEntitiesContinuation) in
            listConnectorEntities(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Lists all of the flows associated with your account.
    func listFlows(input: ListFlowsInput) async throws -> ListFlowsOutputResponse
    {
        typealias listFlowsContinuation = CheckedContinuation<ListFlowsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFlowsContinuation) in
            listFlows(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Retrieves the tags that are associated with a specified flow.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Activates an existing flow. For on-demand flows, this operation runs the flow
    ///       immediately. For schedule and event-triggered flows, this operation activates the flow.
    func startFlow(input: StartFlowInput) async throws -> StartFlowOutputResponse
    {
        typealias startFlowContinuation = CheckedContinuation<StartFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startFlowContinuation) in
            startFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Deactivates the existing flow. For on-demand flows, this operation returns an
    ///         unsupportedOperationException error message. For schedule and event-triggered
    ///       flows, this operation deactivates the flow.
    func stopFlow(input: StopFlowInput) async throws -> StopFlowOutputResponse
    {
        typealias stopFlowContinuation = CheckedContinuation<StopFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopFlowContinuation) in
            stopFlow(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Applies a tag to the specified flow.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Removes a tag from the specified flow.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Updates a given connector profile associated with your account.
    func updateConnectorProfile(input: UpdateConnectorProfileInput) async throws -> UpdateConnectorProfileOutputResponse
    {
        typealias updateConnectorProfileContinuation = CheckedContinuation<UpdateConnectorProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateConnectorProfileContinuation) in
            updateConnectorProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    ///  Updates an existing flow.
    func updateFlow(input: UpdateFlowInput) async throws -> UpdateFlowOutputResponse
    {
        typealias updateFlowContinuation = CheckedContinuation<UpdateFlowOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateFlowContinuation) in
            updateFlow(input: input) { result in
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
