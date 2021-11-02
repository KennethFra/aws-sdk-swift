// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SavingsplansClient {
    /// Creates a Savings Plan.
    func createSavingsPlan(input: CreateSavingsPlanInput) async throws -> CreateSavingsPlanOutputResponse
    {
        typealias createSavingsPlanContinuation = CheckedContinuation<CreateSavingsPlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSavingsPlanContinuation) in
            createSavingsPlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the queued purchase for the specified Savings Plan.
    func deleteQueuedSavingsPlan(input: DeleteQueuedSavingsPlanInput) async throws -> DeleteQueuedSavingsPlanOutputResponse
    {
        typealias deleteQueuedSavingsPlanContinuation = CheckedContinuation<DeleteQueuedSavingsPlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteQueuedSavingsPlanContinuation) in
            deleteQueuedSavingsPlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the specified Savings Plans rates.
    func describeSavingsPlanRates(input: DescribeSavingsPlanRatesInput) async throws -> DescribeSavingsPlanRatesOutputResponse
    {
        typealias describeSavingsPlanRatesContinuation = CheckedContinuation<DescribeSavingsPlanRatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSavingsPlanRatesContinuation) in
            describeSavingsPlanRates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the specified Savings Plans.
    func describeSavingsPlans(input: DescribeSavingsPlansInput) async throws -> DescribeSavingsPlansOutputResponse
    {
        typealias describeSavingsPlansContinuation = CheckedContinuation<DescribeSavingsPlansOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSavingsPlansContinuation) in
            describeSavingsPlans(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the specified Savings Plans offering rates.
    func describeSavingsPlansOfferingRates(input: DescribeSavingsPlansOfferingRatesInput) async throws -> DescribeSavingsPlansOfferingRatesOutputResponse
    {
        typealias describeSavingsPlansOfferingRatesContinuation = CheckedContinuation<DescribeSavingsPlansOfferingRatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSavingsPlansOfferingRatesContinuation) in
            describeSavingsPlansOfferingRates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the specified Savings Plans offerings.
    func describeSavingsPlansOfferings(input: DescribeSavingsPlansOfferingsInput) async throws -> DescribeSavingsPlansOfferingsOutputResponse
    {
        typealias describeSavingsPlansOfferingsContinuation = CheckedContinuation<DescribeSavingsPlansOfferingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSavingsPlansOfferingsContinuation) in
            describeSavingsPlansOfferings(input: input) { result in
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

    /// Adds the specified tags to the specified resource.
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

    /// Removes the specified tags from the specified resource.
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
