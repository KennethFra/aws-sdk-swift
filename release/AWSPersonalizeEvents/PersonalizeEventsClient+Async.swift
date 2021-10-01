// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension PersonalizeEventsClient {
    /// Records user interaction event data. For more information see
    ///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html">Recording Events.
    func putEvents(input: PutEventsInput) async throws -> PutEventsOutputResponse
    {
        typealias putEventsContinuation = CheckedContinuation<PutEventsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putEventsContinuation) in
            putEvents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more items to an Items dataset. For more information see
    ///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html">Importing Items Incrementally.
    ///
    func putItems(input: PutItemsInput) async throws -> PutItemsOutputResponse
    {
        typealias putItemsContinuation = CheckedContinuation<PutItemsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putItemsContinuation) in
            putItems(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more users to a Users dataset. For more information see
    ///       <a href="https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html">Importing Users Incrementally.
    func putUsers(input: PutUsersInput) async throws -> PutUsersOutputResponse
    {
        typealias putUsersContinuation = CheckedContinuation<PutUsersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putUsersContinuation) in
            putUsers(input: input) { result in
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
