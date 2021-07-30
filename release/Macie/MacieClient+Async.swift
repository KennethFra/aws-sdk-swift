// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MacieClient {
    /// <p>Associates a specified AWS account with Amazon Macie Classic as a member
    ///       account.</p>
    func associateMemberAccount(input: AssociateMemberAccountInput) async throws -> AssociateMemberAccountOutputResponse
    {
        typealias associateMemberAccountContinuation = CheckedContinuation<AssociateMemberAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateMemberAccountContinuation) in
            associateMemberAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Associates specified S3 resources with Amazon Macie Classic for monitoring and data
    ///       classification. If memberAccountId isn't specified, the action associates specified S3
    ///       resources with Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified,
    ///       the action associates specified S3 resources with Macie Classic for the specified member
    ///       account. </p>
    func associateS3Resources(input: AssociateS3ResourcesInput) async throws -> AssociateS3ResourcesOutputResponse
    {
        typealias associateS3ResourcesContinuation = CheckedContinuation<AssociateS3ResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateS3ResourcesContinuation) in
            associateS3Resources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Removes the specified member account from Amazon Macie Classic.</p>
    func disassociateMemberAccount(input: DisassociateMemberAccountInput) async throws -> DisassociateMemberAccountOutputResponse
    {
        typealias disassociateMemberAccountContinuation = CheckedContinuation<DisassociateMemberAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateMemberAccountContinuation) in
            disassociateMemberAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Removes specified S3 resources from being monitored by Amazon Macie Classic. If
    ///       memberAccountId isn't specified, the action removes specified S3 resources from Macie Classic
    ///       for the current Macie Classic administrator account. If memberAccountId is specified, the action removes specified
    ///       S3 resources from Macie Classic for the specified member account.</p>
    func disassociateS3Resources(input: DisassociateS3ResourcesInput) async throws -> DisassociateS3ResourcesOutputResponse
    {
        typealias disassociateS3ResourcesContinuation = CheckedContinuation<DisassociateS3ResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateS3ResourcesContinuation) in
            disassociateS3Resources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all Amazon Macie Classic member accounts for the current Macie Classic administrator account.</p>
    func listMemberAccounts(input: ListMemberAccountsInput) async throws -> ListMemberAccountsOutputResponse
    {
        typealias listMemberAccountsContinuation = CheckedContinuation<ListMemberAccountsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listMemberAccountsContinuation) in
            listMemberAccounts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all the S3 resources associated with Amazon Macie Classic. If memberAccountId
    ///       isn't specified, the action lists the S3 resources associated with Macie Classic for
    ///       the current Macie Classic administrator account. If memberAccountId is specified, the action lists the S3 resources
    ///       associated with Macie Classic for the specified member account. </p>
    func listS3Resources(input: ListS3ResourcesInput) async throws -> ListS3ResourcesOutputResponse
    {
        typealias listS3ResourcesContinuation = CheckedContinuation<ListS3ResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listS3ResourcesContinuation) in
            listS3Resources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the classification types for the specified S3 resources. If memberAccountId
    ///       isn't specified, the action updates the classification types of the S3 resources associated
    ///       with Amazon Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified, the
    ///       action updates the classification types of the S3 resources associated with Macie
    ///       Classic for the specified member account. </p>
    func updateS3Resources(input: UpdateS3ResourcesInput) async throws -> UpdateS3ResourcesOutputResponse
    {
        typealias updateS3ResourcesContinuation = CheckedContinuation<UpdateS3ResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateS3ResourcesContinuation) in
            updateS3Resources(input: input) { result in
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
