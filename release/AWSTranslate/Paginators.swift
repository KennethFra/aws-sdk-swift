// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListParallelDataOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListParallelDataInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListParallelDataOutputResponse`
extension TranslateClient {
    public func listParallelDataPaginated(input: ListParallelDataInput) -> ClientRuntime.PaginatorSequence<ListParallelDataInput, ListParallelDataOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListParallelDataInput, ListParallelDataOutputResponse>(input: input, inputKey: \ListParallelDataInput.nextToken, outputKey: \ListParallelDataOutputResponse.nextToken, paginationFunction: self.listParallelData(input:))
    }
}

extension ListParallelDataInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListParallelDataInput {
        return ListParallelDataInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTerminologiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTerminologiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTerminologiesOutputResponse`
extension TranslateClient {
    public func listTerminologiesPaginated(input: ListTerminologiesInput) -> ClientRuntime.PaginatorSequence<ListTerminologiesInput, ListTerminologiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTerminologiesInput, ListTerminologiesOutputResponse>(input: input, inputKey: \ListTerminologiesInput.nextToken, outputKey: \ListTerminologiesOutputResponse.nextToken, paginationFunction: self.listTerminologies(input:))
    }
}

extension ListTerminologiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTerminologiesInput {
        return ListTerminologiesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTextTranslationJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTextTranslationJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTextTranslationJobsOutputResponse`
extension TranslateClient {
    public func listTextTranslationJobsPaginated(input: ListTextTranslationJobsInput) -> ClientRuntime.PaginatorSequence<ListTextTranslationJobsInput, ListTextTranslationJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTextTranslationJobsInput, ListTextTranslationJobsOutputResponse>(input: input, inputKey: \ListTextTranslationJobsInput.nextToken, outputKey: \ListTextTranslationJobsOutputResponse.nextToken, paginationFunction: self.listTextTranslationJobs(input:))
    }
}

extension ListTextTranslationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTextTranslationJobsInput {
        return ListTextTranslationJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
