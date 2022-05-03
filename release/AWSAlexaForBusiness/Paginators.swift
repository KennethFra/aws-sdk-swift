// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListBusinessReportSchedulesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBusinessReportSchedulesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBusinessReportSchedulesOutputResponse`
extension AlexaForBusinessClient {
    public func listBusinessReportSchedulesPaginated(input: ListBusinessReportSchedulesInput) -> ClientRuntime.PaginatorSequence<ListBusinessReportSchedulesInput, ListBusinessReportSchedulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBusinessReportSchedulesInput, ListBusinessReportSchedulesOutputResponse>(input: input, inputKey: \ListBusinessReportSchedulesInput.nextToken, outputKey: \ListBusinessReportSchedulesOutputResponse.nextToken, paginationFunction: self.listBusinessReportSchedules(input:))
    }
}

extension ListBusinessReportSchedulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBusinessReportSchedulesInput {
        return ListBusinessReportSchedulesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListConferenceProvidersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListConferenceProvidersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListConferenceProvidersOutputResponse`
extension AlexaForBusinessClient {
    public func listConferenceProvidersPaginated(input: ListConferenceProvidersInput) -> ClientRuntime.PaginatorSequence<ListConferenceProvidersInput, ListConferenceProvidersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListConferenceProvidersInput, ListConferenceProvidersOutputResponse>(input: input, inputKey: \ListConferenceProvidersInput.nextToken, outputKey: \ListConferenceProvidersOutputResponse.nextToken, paginationFunction: self.listConferenceProviders(input:))
    }
}

extension ListConferenceProvidersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConferenceProvidersInput {
        return ListConferenceProvidersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListDeviceEventsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDeviceEventsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDeviceEventsOutputResponse`
extension AlexaForBusinessClient {
    public func listDeviceEventsPaginated(input: ListDeviceEventsInput) -> ClientRuntime.PaginatorSequence<ListDeviceEventsInput, ListDeviceEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDeviceEventsInput, ListDeviceEventsOutputResponse>(input: input, inputKey: \ListDeviceEventsInput.nextToken, outputKey: \ListDeviceEventsOutputResponse.nextToken, paginationFunction: self.listDeviceEvents(input:))
    }
}

extension ListDeviceEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeviceEventsInput {
        return ListDeviceEventsInput(
            deviceArn: self.deviceArn,
            eventType: self.eventType,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListGatewayGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListGatewayGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListGatewayGroupsOutputResponse`
extension AlexaForBusinessClient {
    public func listGatewayGroupsPaginated(input: ListGatewayGroupsInput) -> ClientRuntime.PaginatorSequence<ListGatewayGroupsInput, ListGatewayGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGatewayGroupsInput, ListGatewayGroupsOutputResponse>(input: input, inputKey: \ListGatewayGroupsInput.nextToken, outputKey: \ListGatewayGroupsOutputResponse.nextToken, paginationFunction: self.listGatewayGroups(input:))
    }
}

extension ListGatewayGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGatewayGroupsInput {
        return ListGatewayGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListGatewaysOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListGatewaysInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListGatewaysOutputResponse`
extension AlexaForBusinessClient {
    public func listGatewaysPaginated(input: ListGatewaysInput) -> ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutputResponse>(input: input, inputKey: \ListGatewaysInput.nextToken, outputKey: \ListGatewaysOutputResponse.nextToken, paginationFunction: self.listGateways(input:))
    }
}

extension ListGatewaysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGatewaysInput {
        return ListGatewaysInput(
            gatewayGroupArn: self.gatewayGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSkillsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSkillsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSkillsOutputResponse`
extension AlexaForBusinessClient {
    public func listSkillsPaginated(input: ListSkillsInput) -> ClientRuntime.PaginatorSequence<ListSkillsInput, ListSkillsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSkillsInput, ListSkillsOutputResponse>(input: input, inputKey: \ListSkillsInput.nextToken, outputKey: \ListSkillsOutputResponse.nextToken, paginationFunction: self.listSkills(input:))
    }
}

extension ListSkillsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSkillsInput {
        return ListSkillsInput(
            enablementType: self.enablementType,
            maxResults: self.maxResults,
            nextToken: token,
            skillGroupArn: self.skillGroupArn,
            skillType: self.skillType
        )}
}

/// Paginate over `[ListSkillsStoreCategoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSkillsStoreCategoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSkillsStoreCategoriesOutputResponse`
extension AlexaForBusinessClient {
    public func listSkillsStoreCategoriesPaginated(input: ListSkillsStoreCategoriesInput) -> ClientRuntime.PaginatorSequence<ListSkillsStoreCategoriesInput, ListSkillsStoreCategoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSkillsStoreCategoriesInput, ListSkillsStoreCategoriesOutputResponse>(input: input, inputKey: \ListSkillsStoreCategoriesInput.nextToken, outputKey: \ListSkillsStoreCategoriesOutputResponse.nextToken, paginationFunction: self.listSkillsStoreCategories(input:))
    }
}

extension ListSkillsStoreCategoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSkillsStoreCategoriesInput {
        return ListSkillsStoreCategoriesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSkillsStoreSkillsByCategoryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSkillsStoreSkillsByCategoryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSkillsStoreSkillsByCategoryOutputResponse`
extension AlexaForBusinessClient {
    public func listSkillsStoreSkillsByCategoryPaginated(input: ListSkillsStoreSkillsByCategoryInput) -> ClientRuntime.PaginatorSequence<ListSkillsStoreSkillsByCategoryInput, ListSkillsStoreSkillsByCategoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSkillsStoreSkillsByCategoryInput, ListSkillsStoreSkillsByCategoryOutputResponse>(input: input, inputKey: \ListSkillsStoreSkillsByCategoryInput.nextToken, outputKey: \ListSkillsStoreSkillsByCategoryOutputResponse.nextToken, paginationFunction: self.listSkillsStoreSkillsByCategory(input:))
    }
}

extension ListSkillsStoreSkillsByCategoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSkillsStoreSkillsByCategoryInput {
        return ListSkillsStoreSkillsByCategoryInput(
            categoryId: self.categoryId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSmartHomeAppliancesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSmartHomeAppliancesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSmartHomeAppliancesOutputResponse`
extension AlexaForBusinessClient {
    public func listSmartHomeAppliancesPaginated(input: ListSmartHomeAppliancesInput) -> ClientRuntime.PaginatorSequence<ListSmartHomeAppliancesInput, ListSmartHomeAppliancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSmartHomeAppliancesInput, ListSmartHomeAppliancesOutputResponse>(input: input, inputKey: \ListSmartHomeAppliancesInput.nextToken, outputKey: \ListSmartHomeAppliancesOutputResponse.nextToken, paginationFunction: self.listSmartHomeAppliances(input:))
    }
}

extension ListSmartHomeAppliancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSmartHomeAppliancesInput {
        return ListSmartHomeAppliancesInput(
            maxResults: self.maxResults,
            nextToken: token,
            roomArn: self.roomArn
        )}
}

/// Paginate over `[ListTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsOutputResponse`
extension AlexaForBusinessClient {
    public func listTagsPaginated(input: ListTagsInput) -> ClientRuntime.PaginatorSequence<ListTagsInput, ListTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsInput, ListTagsOutputResponse>(input: input, inputKey: \ListTagsInput.nextToken, outputKey: \ListTagsOutputResponse.nextToken, paginationFunction: self.listTags(input:))
    }
}

extension ListTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsInput {
        return ListTagsInput(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[SearchAddressBooksOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchAddressBooksInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchAddressBooksOutputResponse`
extension AlexaForBusinessClient {
    public func searchAddressBooksPaginated(input: SearchAddressBooksInput) -> ClientRuntime.PaginatorSequence<SearchAddressBooksInput, SearchAddressBooksOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchAddressBooksInput, SearchAddressBooksOutputResponse>(input: input, inputKey: \SearchAddressBooksInput.nextToken, outputKey: \SearchAddressBooksOutputResponse.nextToken, paginationFunction: self.searchAddressBooks(input:))
    }
}

extension SearchAddressBooksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchAddressBooksInput {
        return SearchAddressBooksInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchContactsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchContactsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchContactsOutputResponse`
extension AlexaForBusinessClient {
    public func searchContactsPaginated(input: SearchContactsInput) -> ClientRuntime.PaginatorSequence<SearchContactsInput, SearchContactsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchContactsInput, SearchContactsOutputResponse>(input: input, inputKey: \SearchContactsInput.nextToken, outputKey: \SearchContactsOutputResponse.nextToken, paginationFunction: self.searchContacts(input:))
    }
}

extension SearchContactsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchContactsInput {
        return SearchContactsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchDevicesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchDevicesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchDevicesOutputResponse`
extension AlexaForBusinessClient {
    public func searchDevicesPaginated(input: SearchDevicesInput) -> ClientRuntime.PaginatorSequence<SearchDevicesInput, SearchDevicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchDevicesInput, SearchDevicesOutputResponse>(input: input, inputKey: \SearchDevicesInput.nextToken, outputKey: \SearchDevicesOutputResponse.nextToken, paginationFunction: self.searchDevices(input:))
    }
}

extension SearchDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchDevicesInput {
        return SearchDevicesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchNetworkProfilesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchNetworkProfilesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchNetworkProfilesOutputResponse`
extension AlexaForBusinessClient {
    public func searchNetworkProfilesPaginated(input: SearchNetworkProfilesInput) -> ClientRuntime.PaginatorSequence<SearchNetworkProfilesInput, SearchNetworkProfilesOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchNetworkProfilesInput, SearchNetworkProfilesOutputResponse>(input: input, inputKey: \SearchNetworkProfilesInput.nextToken, outputKey: \SearchNetworkProfilesOutputResponse.nextToken, paginationFunction: self.searchNetworkProfiles(input:))
    }
}

extension SearchNetworkProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchNetworkProfilesInput {
        return SearchNetworkProfilesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchProfilesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchProfilesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchProfilesOutputResponse`
extension AlexaForBusinessClient {
    public func searchProfilesPaginated(input: SearchProfilesInput) -> ClientRuntime.PaginatorSequence<SearchProfilesInput, SearchProfilesOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchProfilesInput, SearchProfilesOutputResponse>(input: input, inputKey: \SearchProfilesInput.nextToken, outputKey: \SearchProfilesOutputResponse.nextToken, paginationFunction: self.searchProfiles(input:))
    }
}

extension SearchProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchProfilesInput {
        return SearchProfilesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchRoomsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchRoomsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchRoomsOutputResponse`
extension AlexaForBusinessClient {
    public func searchRoomsPaginated(input: SearchRoomsInput) -> ClientRuntime.PaginatorSequence<SearchRoomsInput, SearchRoomsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchRoomsInput, SearchRoomsOutputResponse>(input: input, inputKey: \SearchRoomsInput.nextToken, outputKey: \SearchRoomsOutputResponse.nextToken, paginationFunction: self.searchRooms(input:))
    }
}

extension SearchRoomsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchRoomsInput {
        return SearchRoomsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchSkillGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchSkillGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchSkillGroupsOutputResponse`
extension AlexaForBusinessClient {
    public func searchSkillGroupsPaginated(input: SearchSkillGroupsInput) -> ClientRuntime.PaginatorSequence<SearchSkillGroupsInput, SearchSkillGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchSkillGroupsInput, SearchSkillGroupsOutputResponse>(input: input, inputKey: \SearchSkillGroupsInput.nextToken, outputKey: \SearchSkillGroupsOutputResponse.nextToken, paginationFunction: self.searchSkillGroups(input:))
    }
}

extension SearchSkillGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchSkillGroupsInput {
        return SearchSkillGroupsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// Paginate over `[SearchUsersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchUsersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchUsersOutputResponse`
extension AlexaForBusinessClient {
    public func searchUsersPaginated(input: SearchUsersInput) -> ClientRuntime.PaginatorSequence<SearchUsersInput, SearchUsersOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchUsersInput, SearchUsersOutputResponse>(input: input, inputKey: \SearchUsersInput.nextToken, outputKey: \SearchUsersOutputResponse.nextToken, paginationFunction: self.searchUsers(input:))
    }
}

extension SearchUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchUsersInput {
        return SearchUsersInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}
