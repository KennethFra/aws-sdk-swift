// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension FinspaceClient {
    /// Create a new FinSpace environment.
    func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutputResponse
    {
        typealias createEnvironmentContinuation = CheckedContinuation<CreateEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createEnvironmentContinuation) in
            createEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete an FinSpace environment.
    func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutputResponse
    {
        typealias deleteEnvironmentContinuation = CheckedContinuation<DeleteEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteEnvironmentContinuation) in
            deleteEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the FinSpace environment object.
    func getEnvironment(input: GetEnvironmentInput) async throws -> GetEnvironmentOutputResponse
    {
        typealias getEnvironmentContinuation = CheckedContinuation<GetEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEnvironmentContinuation) in
            getEnvironment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// A list of all of your FinSpace environments.
    func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutputResponse
    {
        typealias listEnvironmentsContinuation = CheckedContinuation<ListEnvironmentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEnvironmentsContinuation) in
            listEnvironments(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// A list of all tags for a resource.
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

    /// Adds metadata tags to a FinSpace resource.
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

    /// Removes metadata tags from a FinSpace resource.
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

    /// Update your FinSpace environment.
    func updateEnvironment(input: UpdateEnvironmentInput) async throws -> UpdateEnvironmentOutputResponse
    {
        typealias updateEnvironmentContinuation = CheckedContinuation<UpdateEnvironmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateEnvironmentContinuation) in
            updateEnvironment(input: input) { result in
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
