// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AccessAnalyzerClient {
    /// Retroactively applies the archive rule to existing findings that meet the archive rule criteria.
    func applyArchiveRule(input: ApplyArchiveRuleInput) async throws -> ApplyArchiveRuleOutputResponse
    {
        typealias applyArchiveRuleContinuation = CheckedContinuation<ApplyArchiveRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: applyArchiveRuleContinuation) in
            applyArchiveRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Cancels the requested policy generation.
    func cancelPolicyGeneration(input: CancelPolicyGenerationInput) async throws -> CancelPolicyGenerationOutputResponse
    {
        typealias cancelPolicyGenerationContinuation = CheckedContinuation<CancelPolicyGenerationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelPolicyGenerationContinuation) in
            cancelPolicyGeneration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions.
    func createAccessPreview(input: CreateAccessPreviewInput) async throws -> CreateAccessPreviewOutputResponse
    {
        typealias createAccessPreviewContinuation = CheckedContinuation<CreateAccessPreviewOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAccessPreviewContinuation) in
            createAccessPreview(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an analyzer for your account.
    func createAnalyzer(input: CreateAnalyzerInput) async throws -> CreateAnalyzerOutputResponse
    {
        typealias createAnalyzerContinuation = CheckedContinuation<CreateAnalyzerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAnalyzerContinuation) in
            createAnalyzer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an archive rule for the specified analyzer. Archive rules automatically archive new findings that meet the criteria you define when you create the rule. To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    func createArchiveRule(input: CreateArchiveRuleInput) async throws -> CreateArchiveRuleOutputResponse
    {
        typealias createArchiveRuleContinuation = CheckedContinuation<CreateArchiveRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createArchiveRuleContinuation) in
            createArchiveRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled for the account or organization in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    func deleteAnalyzer(input: DeleteAnalyzerInput) async throws -> DeleteAnalyzerOutputResponse
    {
        typealias deleteAnalyzerContinuation = CheckedContinuation<DeleteAnalyzerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAnalyzerContinuation) in
            deleteAnalyzer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified archive rule.
    func deleteArchiveRule(input: DeleteArchiveRuleInput) async throws -> DeleteArchiveRuleOutputResponse
    {
        typealias deleteArchiveRuleContinuation = CheckedContinuation<DeleteArchiveRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteArchiveRuleContinuation) in
            deleteArchiveRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about an access preview for the specified analyzer.
    func getAccessPreview(input: GetAccessPreviewInput) async throws -> GetAccessPreviewOutputResponse
    {
        typealias getAccessPreviewContinuation = CheckedContinuation<GetAccessPreviewOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAccessPreviewContinuation) in
            getAccessPreview(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a resource that was analyzed.
    func getAnalyzedResource(input: GetAnalyzedResourceInput) async throws -> GetAnalyzedResourceOutputResponse
    {
        typealias getAnalyzedResourceContinuation = CheckedContinuation<GetAnalyzedResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAnalyzedResourceContinuation) in
            getAnalyzedResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about the specified analyzer.
    func getAnalyzer(input: GetAnalyzerInput) async throws -> GetAnalyzerOutputResponse
    {
        typealias getAnalyzerContinuation = CheckedContinuation<GetAnalyzerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAnalyzerContinuation) in
            getAnalyzer(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about an archive rule. To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    func getArchiveRule(input: GetArchiveRuleInput) async throws -> GetArchiveRuleOutputResponse
    {
        typealias getArchiveRuleContinuation = CheckedContinuation<GetArchiveRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getArchiveRuleContinuation) in
            getArchiveRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about the specified finding.
    func getFinding(input: GetFindingInput) async throws -> GetFindingOutputResponse
    {
        typealias getFindingContinuation = CheckedContinuation<GetFindingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getFindingContinuation) in
            getFinding(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the policy that was generated using StartPolicyGeneration.
    func getGeneratedPolicy(input: GetGeneratedPolicyInput) async throws -> GetGeneratedPolicyOutputResponse
    {
        typealias getGeneratedPolicyContinuation = CheckedContinuation<GetGeneratedPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getGeneratedPolicyContinuation) in
            getGeneratedPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of access preview findings generated by the specified access preview.
    func listAccessPreviewFindings(input: ListAccessPreviewFindingsInput) async throws -> ListAccessPreviewFindingsOutputResponse
    {
        typealias listAccessPreviewFindingsContinuation = CheckedContinuation<ListAccessPreviewFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccessPreviewFindingsContinuation) in
            listAccessPreviewFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of access previews for the specified analyzer.
    func listAccessPreviews(input: ListAccessPreviewsInput) async throws -> ListAccessPreviewsOutputResponse
    {
        typealias listAccessPreviewsContinuation = CheckedContinuation<ListAccessPreviewsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccessPreviewsContinuation) in
            listAccessPreviews(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    func listAnalyzedResources(input: ListAnalyzedResourcesInput) async throws -> ListAnalyzedResourcesOutputResponse
    {
        typealias listAnalyzedResourcesContinuation = CheckedContinuation<ListAnalyzedResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAnalyzedResourcesContinuation) in
            listAnalyzedResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of analyzers.
    func listAnalyzers(input: ListAnalyzersInput) async throws -> ListAnalyzersOutputResponse
    {
        typealias listAnalyzersContinuation = CheckedContinuation<ListAnalyzersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAnalyzersContinuation) in
            listAnalyzers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of archive rules created for the specified analyzer.
    func listArchiveRules(input: ListArchiveRulesInput) async throws -> ListArchiveRulesOutputResponse
    {
        typealias listArchiveRulesContinuation = CheckedContinuation<ListArchiveRulesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listArchiveRulesContinuation) in
            listArchiveRules(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    func listFindings(input: ListFindingsInput) async throws -> ListFindingsOutputResponse
    {
        typealias listFindingsContinuation = CheckedContinuation<ListFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFindingsContinuation) in
            listFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the policy generations requested in the last seven days.
    func listPolicyGenerations(input: ListPolicyGenerationsInput) async throws -> ListPolicyGenerationsOutputResponse
    {
        typealias listPolicyGenerationsContinuation = CheckedContinuation<ListPolicyGenerationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPolicyGenerationsContinuation) in
            listPolicyGenerations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of tags applied to the specified resource.
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

    /// Starts the policy generation request.
    func startPolicyGeneration(input: StartPolicyGenerationInput) async throws -> StartPolicyGenerationOutputResponse
    {
        typealias startPolicyGenerationContinuation = CheckedContinuation<StartPolicyGenerationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startPolicyGenerationContinuation) in
            startPolicyGeneration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Immediately starts a scan of the policies applied to the specified resource.
    func startResourceScan(input: StartResourceScanInput) async throws -> StartResourceScanOutputResponse
    {
        typealias startResourceScanContinuation = CheckedContinuation<StartResourceScanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startResourceScanContinuation) in
            startResourceScan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds a tag to the specified resource.
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

    /// Removes a tag from the specified resource.
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

    /// Updates the criteria and values for the specified archive rule.
    func updateArchiveRule(input: UpdateArchiveRuleInput) async throws -> UpdateArchiveRuleOutputResponse
    {
        typealias updateArchiveRuleContinuation = CheckedContinuation<UpdateArchiveRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateArchiveRuleContinuation) in
            updateArchiveRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the status for the specified findings.
    func updateFindings(input: UpdateFindingsInput) async throws -> UpdateFindingsOutputResponse
    {
        typealias updateFindingsContinuation = CheckedContinuation<UpdateFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateFindingsContinuation) in
            updateFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    func validatePolicy(input: ValidatePolicyInput) async throws -> ValidatePolicyOutputResponse
    {
        typealias validatePolicyContinuation = CheckedContinuation<ValidatePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: validatePolicyContinuation) in
            validatePolicy(input: input) { result in
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
