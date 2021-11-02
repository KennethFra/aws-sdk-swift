// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension IoTAnalyticsClient {
    /// Sends messages to a channel.
    func batchPutMessage(input: BatchPutMessageInput) async throws -> BatchPutMessageOutputResponse
    {
        typealias batchPutMessageContinuation = CheckedContinuation<BatchPutMessageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchPutMessageContinuation) in
            batchPutMessage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Cancels the reprocessing of data through the pipeline.
    func cancelPipelineReprocessing(input: CancelPipelineReprocessingInput) async throws -> CancelPipelineReprocessingOutputResponse
    {
        typealias cancelPipelineReprocessingContinuation = CheckedContinuation<CancelPipelineReprocessingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelPipelineReprocessingContinuation) in
            cancelPipelineReprocessing(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Used to create a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    {
        typealias createChannelContinuation = CheckedContinuation<CreateChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createChannelContinuation) in
            createChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Used to create a dataset. A dataset stores data retrieved from a data store by applying a queryAction (a SQL query) or a containerAction (executing a containerized application). This operation creates the skeleton of a dataset. The dataset can be populated manually by calling CreateDatasetContent or automatically according to a trigger you specify.
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    {
        typealias createDatasetContinuation = CheckedContinuation<CreateDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDatasetContinuation) in
            createDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates the content of a dataset by applying a queryAction (a SQL query) or a containerAction (executing a containerized application).
    func createDatasetContent(input: CreateDatasetContentInput) async throws -> CreateDatasetContentOutputResponse
    {
        typealias createDatasetContentContinuation = CheckedContinuation<CreateDatasetContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDatasetContentContinuation) in
            createDatasetContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a data store, which is a repository for messages.
    func createDatastore(input: CreateDatastoreInput) async throws -> CreateDatastoreOutputResponse
    {
        typealias createDatastoreContinuation = CheckedContinuation<CreateDatastoreOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDatastoreContinuation) in
            createDatastore(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
    func createPipeline(input: CreatePipelineInput) async throws -> CreatePipelineOutputResponse
    {
        typealias createPipelineContinuation = CheckedContinuation<CreatePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPipelineContinuation) in
            createPipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified channel.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    {
        typealias deleteChannelContinuation = CheckedContinuation<DeleteChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteChannelContinuation) in
            deleteChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified dataset. You do not have to delete the content of the dataset before you perform this operation.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    {
        typealias deleteDatasetContinuation = CheckedContinuation<DeleteDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDatasetContinuation) in
            deleteDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the content of the specified dataset.
    func deleteDatasetContent(input: DeleteDatasetContentInput) async throws -> DeleteDatasetContentOutputResponse
    {
        typealias deleteDatasetContentContinuation = CheckedContinuation<DeleteDatasetContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDatasetContentContinuation) in
            deleteDatasetContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified data store.
    func deleteDatastore(input: DeleteDatastoreInput) async throws -> DeleteDatastoreOutputResponse
    {
        typealias deleteDatastoreContinuation = CheckedContinuation<DeleteDatastoreOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDatastoreContinuation) in
            deleteDatastore(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified pipeline.
    func deletePipeline(input: DeletePipelineInput) async throws -> DeletePipelineOutputResponse
    {
        typealias deletePipelineContinuation = CheckedContinuation<DeletePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePipelineContinuation) in
            deletePipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a channel.
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    {
        typealias describeChannelContinuation = CheckedContinuation<DescribeChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeChannelContinuation) in
            describeChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a dataset.
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    {
        typealias describeDatasetContinuation = CheckedContinuation<DescribeDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDatasetContinuation) in
            describeDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a data store.
    func describeDatastore(input: DescribeDatastoreInput) async throws -> DescribeDatastoreOutputResponse
    {
        typealias describeDatastoreContinuation = CheckedContinuation<DescribeDatastoreOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDatastoreContinuation) in
            describeDatastore(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the current settings of the IoT Analytics logging options.
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

    /// Retrieves information about a pipeline.
    func describePipeline(input: DescribePipelineInput) async throws -> DescribePipelineOutputResponse
    {
        typealias describePipelineContinuation = CheckedContinuation<DescribePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePipelineContinuation) in
            describePipeline(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the contents of a dataset as presigned URIs.
    func getDatasetContent(input: GetDatasetContentInput) async throws -> GetDatasetContentOutputResponse
    {
        typealias getDatasetContentContinuation = CheckedContinuation<GetDatasetContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDatasetContentContinuation) in
            getDatasetContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of channels.
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    {
        typealias listChannelsContinuation = CheckedContinuation<ListChannelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listChannelsContinuation) in
            listChannels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists information about dataset contents that have been created.
    func listDatasetContents(input: ListDatasetContentsInput) async throws -> ListDatasetContentsOutputResponse
    {
        typealias listDatasetContentsContinuation = CheckedContinuation<ListDatasetContentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatasetContentsContinuation) in
            listDatasetContents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about datasets.
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    {
        typealias listDatasetsContinuation = CheckedContinuation<ListDatasetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatasetsContinuation) in
            listDatasets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of data stores.
    func listDatastores(input: ListDatastoresInput) async throws -> ListDatastoresOutputResponse
    {
        typealias listDatastoresContinuation = CheckedContinuation<ListDatastoresOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatastoresContinuation) in
            listDatastores(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of pipelines.
    func listPipelines(input: ListPipelinesInput) async throws -> ListPipelinesOutputResponse
    {
        typealias listPipelinesContinuation = CheckedContinuation<ListPipelinesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPipelinesContinuation) in
            listPipelines(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags (metadata) that you have assigned to the resource.
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

    /// Sets or updates the IoT Analytics logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
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

    /// Simulates the results of running a pipeline activity on a message payload.
    func runPipelineActivity(input: RunPipelineActivityInput) async throws -> RunPipelineActivityOutputResponse
    {
        typealias runPipelineActivityContinuation = CheckedContinuation<RunPipelineActivityOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: runPipelineActivityContinuation) in
            runPipelineActivity(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
    func sampleChannelData(input: SampleChannelDataInput) async throws -> SampleChannelDataOutputResponse
    {
        typealias sampleChannelDataContinuation = CheckedContinuation<SampleChannelDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sampleChannelDataContinuation) in
            sampleChannelData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts the reprocessing of raw message data through the pipeline.
    func startPipelineReprocessing(input: StartPipelineReprocessingInput) async throws -> StartPipelineReprocessingOutputResponse
    {
        typealias startPipelineReprocessingContinuation = CheckedContinuation<StartPipelineReprocessingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startPipelineReprocessingContinuation) in
            startPipelineReprocessing(input: input) { result in
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

    /// Used to update the settings of a channel.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    {
        typealias updateChannelContinuation = CheckedContinuation<UpdateChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateChannelContinuation) in
            updateChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the settings of a dataset.
    func updateDataset(input: UpdateDatasetInput) async throws -> UpdateDatasetOutputResponse
    {
        typealias updateDatasetContinuation = CheckedContinuation<UpdateDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDatasetContinuation) in
            updateDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Used to update the settings of a data store.
    func updateDatastore(input: UpdateDatastoreInput) async throws -> UpdateDatastoreOutputResponse
    {
        typealias updateDatastoreContinuation = CheckedContinuation<UpdateDatastoreOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDatastoreContinuation) in
            updateDatastore(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the settings of a pipeline. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
    func updatePipeline(input: UpdatePipelineInput) async throws -> UpdatePipelineOutputResponse
    {
        typealias updatePipelineContinuation = CheckedContinuation<UpdatePipelineOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePipelineContinuation) in
            updatePipeline(input: input) { result in
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
