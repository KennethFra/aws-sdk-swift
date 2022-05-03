// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListCodeReviewsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCodeReviewsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCodeReviewsOutputResponse`
extension CodeGuruReviewerClient {
    public func listCodeReviewsPaginated(input: ListCodeReviewsInput) -> ClientRuntime.PaginatorSequence<ListCodeReviewsInput, ListCodeReviewsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCodeReviewsInput, ListCodeReviewsOutputResponse>(input: input, inputKey: \ListCodeReviewsInput.nextToken, outputKey: \ListCodeReviewsOutputResponse.nextToken, paginationFunction: self.listCodeReviews(input:))
    }
}

extension ListCodeReviewsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCodeReviewsInput {
        return ListCodeReviewsInput(
            maxResults: self.maxResults,
            nextToken: token,
            providerTypes: self.providerTypes,
            repositoryNames: self.repositoryNames,
            states: self.states,
            type: self.type
        )}
}

/// Paginate over `[ListRecommendationFeedbackOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRecommendationFeedbackInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationFeedbackOutputResponse`
extension CodeGuruReviewerClient {
    public func listRecommendationFeedbackPaginated(input: ListRecommendationFeedbackInput) -> ClientRuntime.PaginatorSequence<ListRecommendationFeedbackInput, ListRecommendationFeedbackOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecommendationFeedbackInput, ListRecommendationFeedbackOutputResponse>(input: input, inputKey: \ListRecommendationFeedbackInput.nextToken, outputKey: \ListRecommendationFeedbackOutputResponse.nextToken, paginationFunction: self.listRecommendationFeedback(input:))
    }
}

extension ListRecommendationFeedbackInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationFeedbackInput {
        return ListRecommendationFeedbackInput(
            codeReviewArn: self.codeReviewArn,
            maxResults: self.maxResults,
            nextToken: token,
            recommendationIds: self.recommendationIds,
            userIds: self.userIds
        )}
}

/// Paginate over `[ListRecommendationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRecommendationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationsOutputResponse`
extension CodeGuruReviewerClient {
    public func listRecommendationsPaginated(input: ListRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecommendationsInput, ListRecommendationsOutputResponse>(input: input, inputKey: \ListRecommendationsInput.nextToken, outputKey: \ListRecommendationsOutputResponse.nextToken, paginationFunction: self.listRecommendations(input:))
    }
}

extension ListRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationsInput {
        return ListRecommendationsInput(
            codeReviewArn: self.codeReviewArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListRepositoryAssociationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRepositoryAssociationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRepositoryAssociationsOutputResponse`
extension CodeGuruReviewerClient {
    public func listRepositoryAssociationsPaginated(input: ListRepositoryAssociationsInput) -> ClientRuntime.PaginatorSequence<ListRepositoryAssociationsInput, ListRepositoryAssociationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRepositoryAssociationsInput, ListRepositoryAssociationsOutputResponse>(input: input, inputKey: \ListRepositoryAssociationsInput.nextToken, outputKey: \ListRepositoryAssociationsOutputResponse.nextToken, paginationFunction: self.listRepositoryAssociations(input:))
    }
}

extension ListRepositoryAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoryAssociationsInput {
        return ListRepositoryAssociationsInput(
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token,
            owners: self.owners,
            providerTypes: self.providerTypes,
            states: self.states
        )}
}
