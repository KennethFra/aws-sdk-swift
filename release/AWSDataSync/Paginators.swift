// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAgentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAgentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAgentsOutputResponse`
extension DataSyncClient {
    public func listAgentsPaginated(input: ListAgentsInput) -> ClientRuntime.PaginatorSequence<ListAgentsInput, ListAgentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAgentsInput, ListAgentsOutputResponse>(input: input, inputKey: \ListAgentsInput.nextToken, outputKey: \ListAgentsOutputResponse.nextToken, paginationFunction: self.listAgents(input:))
    }
}

extension ListAgentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAgentsInput {
        return ListAgentsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListLocationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLocationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLocationsOutputResponse`
extension DataSyncClient {
    public func listLocationsPaginated(input: ListLocationsInput) -> ClientRuntime.PaginatorSequence<ListLocationsInput, ListLocationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLocationsInput, ListLocationsOutputResponse>(input: input, inputKey: \ListLocationsInput.nextToken, outputKey: \ListLocationsOutputResponse.nextToken, paginationFunction: self.listLocations(input:))
    }
}

extension ListLocationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLocationsInput {
        return ListLocationsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension DataSyncClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

/// Paginate over `[ListTaskExecutionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTaskExecutionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTaskExecutionsOutputResponse`
extension DataSyncClient {
    public func listTaskExecutionsPaginated(input: ListTaskExecutionsInput) -> ClientRuntime.PaginatorSequence<ListTaskExecutionsInput, ListTaskExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTaskExecutionsInput, ListTaskExecutionsOutputResponse>(input: input, inputKey: \ListTaskExecutionsInput.nextToken, outputKey: \ListTaskExecutionsOutputResponse.nextToken, paginationFunction: self.listTaskExecutions(input:))
    }
}

extension ListTaskExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTaskExecutionsInput {
        return ListTaskExecutionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            taskArn: self.taskArn
        )}
}

/// Paginate over `[ListTasksOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTasksInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTasksOutputResponse`
extension DataSyncClient {
    public func listTasksPaginated(input: ListTasksInput) -> ClientRuntime.PaginatorSequence<ListTasksInput, ListTasksOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTasksInput, ListTasksOutputResponse>(input: input, inputKey: \ListTasksInput.nextToken, outputKey: \ListTasksOutputResponse.nextToken, paginationFunction: self.listTasks(input:))
    }
}

extension ListTasksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTasksInput {
        return ListTasksInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
