// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension OutpostsClient {
    /// Creates an order for an Outpost.
    func createOrder(input: CreateOrderInput) async throws -> CreateOrderOutputResponse
    {
        typealias createOrderContinuation = CheckedContinuation<CreateOrderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOrderContinuation) in
            createOrder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Outpost. You can specify AvailabilityZone or AvailabilityZoneId.
    func createOutpost(input: CreateOutpostInput) async throws -> CreateOutpostOutputResponse
    {
        typealias createOutpostContinuation = CheckedContinuation<CreateOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createOutpostContinuation) in
            createOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the Outpost.
    func deleteOutpost(input: DeleteOutpostInput) async throws -> DeleteOutpostOutputResponse
    {
        typealias deleteOutpostContinuation = CheckedContinuation<DeleteOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteOutpostContinuation) in
            deleteOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the site.
    func deleteSite(input: DeleteSiteInput) async throws -> DeleteSiteOutputResponse
    {
        typealias deleteSiteContinuation = CheckedContinuation<DeleteSiteOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSiteContinuation) in
            deleteSite(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about the specified Outpost.
    func getOutpost(input: GetOutpostInput) async throws -> GetOutpostOutputResponse
    {
        typealias getOutpostContinuation = CheckedContinuation<GetOutpostOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getOutpostContinuation) in
            getOutpost(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the instance types for the specified Outpost.
    func getOutpostInstanceTypes(input: GetOutpostInstanceTypesInput) async throws -> GetOutpostInstanceTypesOutputResponse
    {
        typealias getOutpostInstanceTypesContinuation = CheckedContinuation<GetOutpostInstanceTypesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getOutpostInstanceTypesContinuation) in
            getOutpostInstanceTypes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a list of the Outposts for your AWS account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availibility Zone (us-east-1a), and AZ ID (use1-az1). If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    func listOutposts(input: ListOutpostsInput) async throws -> ListOutpostsOutputResponse
    {
        typealias listOutpostsContinuation = CheckedContinuation<ListOutpostsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listOutpostsContinuation) in
            listOutposts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the sites for the specified AWS account.
    func listSites(input: ListSitesInput) async throws -> ListSitesOutputResponse
    {
        typealias listSitesContinuation = CheckedContinuation<ListSitesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSitesContinuation) in
            listSites(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for the specified resource.
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

    /// Adds tags to the specified resource.
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

    /// Removes tags from the specified resource.
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

}
#endif
