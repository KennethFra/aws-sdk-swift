// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension IotEventsClient {
    /// Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see [Create an alarm model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html) in the AWS IoT Events Developer Guide.
    func createAlarmModel(input: CreateAlarmModelInput) async throws -> CreateAlarmModelOutputResponse
    {
        typealias createAlarmModelContinuation = CheckedContinuation<CreateAlarmModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAlarmModelContinuation) in
            createAlarmModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a detector model.
    func createDetectorModel(input: CreateDetectorModelInput) async throws -> CreateDetectorModelOutputResponse
    {
        typealias createDetectorModelContinuation = CheckedContinuation<CreateDetectorModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDetectorModelContinuation) in
            createDetectorModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an input.
    func createInput(input: CreateInputInput) async throws -> CreateInputOutputResponse
    {
        typealias createInputContinuation = CheckedContinuation<CreateInputOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createInputContinuation) in
            createInput(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an alarm model. Any alarm instances that were created based on this alarm model are also deleted. This action can't be undone.
    func deleteAlarmModel(input: DeleteAlarmModelInput) async throws -> DeleteAlarmModelOutputResponse
    {
        typealias deleteAlarmModelContinuation = CheckedContinuation<DeleteAlarmModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAlarmModelContinuation) in
            deleteAlarmModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a detector model. Any active instances of the detector model are also deleted.
    func deleteDetectorModel(input: DeleteDetectorModelInput) async throws -> DeleteDetectorModelOutputResponse
    {
        typealias deleteDetectorModelContinuation = CheckedContinuation<DeleteDetectorModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDetectorModelContinuation) in
            deleteDetectorModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an input.
    func deleteInput(input: DeleteInputInput) async throws -> DeleteInputOutputResponse
    {
        typealias deleteInputContinuation = CheckedContinuation<DeleteInputOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteInputContinuation) in
            deleteInput(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about an alarm model. If you don't specify a value for the alarmModelVersion parameter, the latest version is returned.
    func describeAlarmModel(input: DescribeAlarmModelInput) async throws -> DescribeAlarmModelOutputResponse
    {
        typealias describeAlarmModelContinuation = CheckedContinuation<DescribeAlarmModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAlarmModelContinuation) in
            describeAlarmModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes a detector model. If the version parameter is not specified, information about the latest version is returned.
    func describeDetectorModel(input: DescribeDetectorModelInput) async throws -> DescribeDetectorModelOutputResponse
    {
        typealias describeDetectorModelContinuation = CheckedContinuation<DescribeDetectorModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDetectorModelContinuation) in
            describeDetectorModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves runtime information about a detector model analysis. After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    func describeDetectorModelAnalysis(input: DescribeDetectorModelAnalysisInput) async throws -> DescribeDetectorModelAnalysisOutputResponse
    {
        typealias describeDetectorModelAnalysisContinuation = CheckedContinuation<DescribeDetectorModelAnalysisOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDetectorModelAnalysisContinuation) in
            describeDetectorModelAnalysis(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an input.
    func describeInput(input: DescribeInputInput) async throws -> DescribeInputOutputResponse
    {
        typealias describeInputContinuation = CheckedContinuation<DescribeInputOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeInputContinuation) in
            describeInput(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the current settings of the AWS IoT Events logging options.
    func describeLoggingOptions(input: DescribeLoggingOptionsInput) async throws -> DescribeLoggingOptionsOutputResponse
    {
        typealias describeLoggingOptionsContinuation = CheckedContinuation<DescribeLoggingOptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLoggingOptionsContinuation) in
            describeLoggingOptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves one or more analysis results of the detector model. After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    func getDetectorModelAnalysisResults(input: GetDetectorModelAnalysisResultsInput) async throws -> GetDetectorModelAnalysisResultsOutputResponse
    {
        typealias getDetectorModelAnalysisResultsContinuation = CheckedContinuation<GetDetectorModelAnalysisResultsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDetectorModelAnalysisResultsContinuation) in
            getDetectorModelAnalysisResults(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the versions of an alarm model. The operation returns only the metadata associated with each alarm model version.
    func listAlarmModelVersions(input: ListAlarmModelVersionsInput) async throws -> ListAlarmModelVersionsOutputResponse
    {
        typealias listAlarmModelVersionsContinuation = CheckedContinuation<ListAlarmModelVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAlarmModelVersionsContinuation) in
            listAlarmModelVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the alarm models that you created. The operation returns only the metadata associated with each alarm model.
    func listAlarmModels(input: ListAlarmModelsInput) async throws -> ListAlarmModelsOutputResponse
    {
        typealias listAlarmModelsContinuation = CheckedContinuation<ListAlarmModelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAlarmModelsContinuation) in
            listAlarmModels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    func listDetectorModelVersions(input: ListDetectorModelVersionsInput) async throws -> ListDetectorModelVersionsOutputResponse
    {
        typealias listDetectorModelVersionsContinuation = CheckedContinuation<ListDetectorModelVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDetectorModelVersionsContinuation) in
            listDetectorModelVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    func listDetectorModels(input: ListDetectorModelsInput) async throws -> ListDetectorModelsOutputResponse
    {
        typealias listDetectorModelsContinuation = CheckedContinuation<ListDetectorModelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDetectorModelsContinuation) in
            listDetectorModels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists one or more input routings.
    func listInputRoutings(input: ListInputRoutingsInput) async throws -> ListInputRoutingsOutputResponse
    {
        typealias listInputRoutingsContinuation = CheckedContinuation<ListInputRoutingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInputRoutingsContinuation) in
            listInputRoutings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the inputs you have created.
    func listInputs(input: ListInputsInput) async throws -> ListInputsOutputResponse
    {
        typealias listInputsContinuation = CheckedContinuation<ListInputsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInputsContinuation) in
            listInputs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags (metadata) you have assigned to the resource.
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

    /// Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    func putLoggingOptions(input: PutLoggingOptionsInput) async throws -> PutLoggingOptionsOutputResponse
    {
        typealias putLoggingOptionsContinuation = CheckedContinuation<PutLoggingOptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putLoggingOptionsContinuation) in
            putLoggingOptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Performs an analysis of your detector model. For more information, see [Troubleshooting a detector model](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html) in the AWS IoT Events Developer Guide.
    func startDetectorModelAnalysis(input: StartDetectorModelAnalysisInput) async throws -> StartDetectorModelAnalysisOutputResponse
    {
        typealias startDetectorModelAnalysisContinuation = CheckedContinuation<StartDetectorModelAnalysisOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startDetectorModelAnalysisContinuation) in
            startDetectorModelAnalysis(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
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

    /// Removes the given tags (metadata) from the resource.
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

    /// Updates an alarm model. Any alarms that were created based on the previous version are deleted and then created again as new data arrives.
    func updateAlarmModel(input: UpdateAlarmModelInput) async throws -> UpdateAlarmModelOutputResponse
    {
        typealias updateAlarmModelContinuation = CheckedContinuation<UpdateAlarmModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAlarmModelContinuation) in
            updateAlarmModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    func updateDetectorModel(input: UpdateDetectorModelInput) async throws -> UpdateDetectorModelOutputResponse
    {
        typealias updateDetectorModelContinuation = CheckedContinuation<UpdateDetectorModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDetectorModelContinuation) in
            updateDetectorModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an input.
    func updateInput(input: UpdateInputInput) async throws -> UpdateInputOutputResponse
    {
        typealias updateInputContinuation = CheckedContinuation<UpdateInputOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateInputContinuation) in
            updateInput(input: input) { result in
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
