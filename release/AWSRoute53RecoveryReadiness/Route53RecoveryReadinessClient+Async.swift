// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension Route53RecoveryReadinessClient {
    /// Creates a new Cell.
    func createCell(input: CreateCellInput) async throws -> CreateCellOutputResponse
    {
        typealias createCellContinuation = CheckedContinuation<CreateCellOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCellContinuation) in
            createCell(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a new cross account readiness authorization.
    func createCrossAccountAuthorization(input: CreateCrossAccountAuthorizationInput) async throws -> CreateCrossAccountAuthorizationOutputResponse
    {
        typealias createCrossAccountAuthorizationContinuation = CheckedContinuation<CreateCrossAccountAuthorizationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCrossAccountAuthorizationContinuation) in
            createCrossAccountAuthorization(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Readiness Check.
    func createReadinessCheck(input: CreateReadinessCheckInput) async throws -> CreateReadinessCheckOutputResponse
    {
        typealias createReadinessCheckContinuation = CheckedContinuation<CreateReadinessCheckOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createReadinessCheckContinuation) in
            createReadinessCheck(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Recovery Group.
    func createRecoveryGroup(input: CreateRecoveryGroupInput) async throws -> CreateRecoveryGroupOutputResponse
    {
        typealias createRecoveryGroupContinuation = CheckedContinuation<CreateRecoveryGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRecoveryGroupContinuation) in
            createRecoveryGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Resource Set.
    func createResourceSet(input: CreateResourceSetInput) async throws -> CreateResourceSetOutputResponse
    {
        typealias createResourceSetContinuation = CheckedContinuation<CreateResourceSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createResourceSetContinuation) in
            createResourceSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing Cell.
    func deleteCell(input: DeleteCellInput) async throws -> DeleteCellOutputResponse
    {
        typealias deleteCellContinuation = CheckedContinuation<DeleteCellOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCellContinuation) in
            deleteCell(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete cross account readiness authorization
    func deleteCrossAccountAuthorization(input: DeleteCrossAccountAuthorizationInput) async throws -> DeleteCrossAccountAuthorizationOutputResponse
    {
        typealias deleteCrossAccountAuthorizationContinuation = CheckedContinuation<DeleteCrossAccountAuthorizationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCrossAccountAuthorizationContinuation) in
            deleteCrossAccountAuthorization(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing Readiness Check.
    func deleteReadinessCheck(input: DeleteReadinessCheckInput) async throws -> DeleteReadinessCheckOutputResponse
    {
        typealias deleteReadinessCheckContinuation = CheckedContinuation<DeleteReadinessCheckOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteReadinessCheckContinuation) in
            deleteReadinessCheck(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing Recovery Group.
    func deleteRecoveryGroup(input: DeleteRecoveryGroupInput) async throws -> DeleteRecoveryGroupOutputResponse
    {
        typealias deleteRecoveryGroupContinuation = CheckedContinuation<DeleteRecoveryGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRecoveryGroupContinuation) in
            deleteRecoveryGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing Resource Set.
    func deleteResourceSet(input: DeleteResourceSetInput) async throws -> DeleteResourceSetOutputResponse
    {
        typealias deleteResourceSetContinuation = CheckedContinuation<DeleteResourceSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteResourceSetContinuation) in
            deleteResourceSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of recommendations to improve resilliance and readiness check quality for a Recovery Group.
    func getArchitectureRecommendations(input: GetArchitectureRecommendationsInput) async throws -> GetArchitectureRecommendationsOutputResponse
    {
        typealias getArchitectureRecommendationsContinuation = CheckedContinuation<GetArchitectureRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getArchitectureRecommendationsContinuation) in
            getArchitectureRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a Cell.
    func getCell(input: GetCellInput) async throws -> GetCellOutputResponse
    {
        typealias getCellContinuation = CheckedContinuation<GetCellOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCellContinuation) in
            getCell(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about readiness of a Cell.
    func getCellReadinessSummary(input: GetCellReadinessSummaryInput) async throws -> GetCellReadinessSummaryOutputResponse
    {
        typealias getCellReadinessSummaryContinuation = CheckedContinuation<GetCellReadinessSummaryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCellReadinessSummaryContinuation) in
            getCellReadinessSummary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a ReadinessCheck.
    func getReadinessCheck(input: GetReadinessCheckInput) async throws -> GetReadinessCheckOutputResponse
    {
        typealias getReadinessCheckContinuation = CheckedContinuation<GetReadinessCheckOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReadinessCheckContinuation) in
            getReadinessCheck(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns detailed information about the status of an individual resource within a Readiness Check's Resource Set.
    func getReadinessCheckResourceStatus(input: GetReadinessCheckResourceStatusInput) async throws -> GetReadinessCheckResourceStatusOutputResponse
    {
        typealias getReadinessCheckResourceStatusContinuation = CheckedContinuation<GetReadinessCheckResourceStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReadinessCheckResourceStatusContinuation) in
            getReadinessCheckResourceStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about the status of a Readiness Check.
    func getReadinessCheckStatus(input: GetReadinessCheckStatusInput) async throws -> GetReadinessCheckStatusOutputResponse
    {
        typealias getReadinessCheckStatusContinuation = CheckedContinuation<GetReadinessCheckStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getReadinessCheckStatusContinuation) in
            getReadinessCheckStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a Recovery Group.
    func getRecoveryGroup(input: GetRecoveryGroupInput) async throws -> GetRecoveryGroupOutputResponse
    {
        typealias getRecoveryGroupContinuation = CheckedContinuation<GetRecoveryGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecoveryGroupContinuation) in
            getRecoveryGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a Recovery Group.
    func getRecoveryGroupReadinessSummary(input: GetRecoveryGroupReadinessSummaryInput) async throws -> GetRecoveryGroupReadinessSummaryOutputResponse
    {
        typealias getRecoveryGroupReadinessSummaryContinuation = CheckedContinuation<GetRecoveryGroupReadinessSummaryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecoveryGroupReadinessSummaryContinuation) in
            getRecoveryGroupReadinessSummary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a Resource Set.
    func getResourceSet(input: GetResourceSetInput) async throws -> GetResourceSetOutputResponse
    {
        typealias getResourceSetContinuation = CheckedContinuation<GetResourceSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getResourceSetContinuation) in
            getResourceSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of Cells.
    func listCells(input: ListCellsInput) async throws -> ListCellsOutputResponse
    {
        typealias listCellsContinuation = CheckedContinuation<ListCellsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCellsContinuation) in
            listCells(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of cross account readiness authorizations.
    func listCrossAccountAuthorizations(input: ListCrossAccountAuthorizationsInput) async throws -> ListCrossAccountAuthorizationsOutputResponse
    {
        typealias listCrossAccountAuthorizationsContinuation = CheckedContinuation<ListCrossAccountAuthorizationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCrossAccountAuthorizationsContinuation) in
            listCrossAccountAuthorizations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of Readiness Checks.
    func listReadinessChecks(input: ListReadinessChecksInput) async throws -> ListReadinessChecksOutputResponse
    {
        typealias listReadinessChecksContinuation = CheckedContinuation<ListReadinessChecksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listReadinessChecksContinuation) in
            listReadinessChecks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of Recovery Groups.
    func listRecoveryGroups(input: ListRecoveryGroupsInput) async throws -> ListRecoveryGroupsOutputResponse
    {
        typealias listRecoveryGroupsContinuation = CheckedContinuation<ListRecoveryGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRecoveryGroupsContinuation) in
            listRecoveryGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of Resource Sets.
    func listResourceSets(input: ListResourceSetsInput) async throws -> ListResourceSetsOutputResponse
    {
        typealias listResourceSetsContinuation = CheckedContinuation<ListResourceSetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listResourceSetsContinuation) in
            listResourceSets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a collection of rules that are applied as part of Readiness Checks.
    func listRules(input: ListRulesInput) async throws -> ListRulesOutputResponse
    {
        typealias listRulesContinuation = CheckedContinuation<ListRulesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRulesContinuation) in
            listRules(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of the tags assigned to the specified resource.
    func listTagsForResources(input: ListTagsForResourcesInput) async throws -> ListTagsForResourcesOutputResponse
    {
        typealias listTagsForResourcesContinuation = CheckedContinuation<ListTagsForResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourcesContinuation) in
            listTagsForResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds tags to the specified resource. You can specify one or more tags to add.
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

    /// Removes tags from the specified resource. You can specify one or more tags to remove.
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

    /// Updates an existing Cell.
    func updateCell(input: UpdateCellInput) async throws -> UpdateCellOutputResponse
    {
        typealias updateCellContinuation = CheckedContinuation<UpdateCellOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateCellContinuation) in
            updateCell(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an exisiting Readiness Check.
    func updateReadinessCheck(input: UpdateReadinessCheckInput) async throws -> UpdateReadinessCheckOutputResponse
    {
        typealias updateReadinessCheckContinuation = CheckedContinuation<UpdateReadinessCheckOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateReadinessCheckContinuation) in
            updateReadinessCheck(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing Recovery Group.
    func updateRecoveryGroup(input: UpdateRecoveryGroupInput) async throws -> UpdateRecoveryGroupOutputResponse
    {
        typealias updateRecoveryGroupContinuation = CheckedContinuation<UpdateRecoveryGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRecoveryGroupContinuation) in
            updateRecoveryGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing Resource Set.
    func updateResourceSet(input: UpdateResourceSetInput) async throws -> UpdateResourceSetOutputResponse
    {
        typealias updateResourceSetContinuation = CheckedContinuation<UpdateResourceSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateResourceSetContinuation) in
            updateResourceSet(input: input) { result in
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
