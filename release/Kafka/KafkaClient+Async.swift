// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension KafkaClient {
    /// <p>Associates one or more Scram Secrets with an Amazon MSK cluster.</p>
    func batchAssociateScramSecret(input: BatchAssociateScramSecretInput) async throws -> BatchAssociateScramSecretOutputResponse
    {
        typealias batchAssociateScramSecretContinuation = CheckedContinuation<BatchAssociateScramSecretOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchAssociateScramSecretContinuation) in
            batchAssociateScramSecret(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Disassociates one or more Scram Secrets from an Amazon MSK cluster.</p>
    func batchDisassociateScramSecret(input: BatchDisassociateScramSecretInput) async throws -> BatchDisassociateScramSecretOutputResponse
    {
        typealias batchDisassociateScramSecretContinuation = CheckedContinuation<BatchDisassociateScramSecretOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchDisassociateScramSecretContinuation) in
            batchDisassociateScramSecret(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new MSK cluster.</p>
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    {
        typealias createClusterContinuation = CheckedContinuation<CreateClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createClusterContinuation) in
            createCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new MSK configuration.</p>
    func createConfiguration(input: CreateConfigurationInput) async throws -> CreateConfigurationOutputResponse
    {
        typealias createConfigurationContinuation = CheckedContinuation<CreateConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConfigurationContinuation) in
            createConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.</p>
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutputResponse
    {
        typealias deleteClusterContinuation = CheckedContinuation<DeleteClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteClusterContinuation) in
            deleteCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes an MSK Configuration.</p>
    func deleteConfiguration(input: DeleteConfigurationInput) async throws -> DeleteConfigurationOutputResponse
    {
        typealias deleteConfigurationContinuation = CheckedContinuation<DeleteConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConfigurationContinuation) in
            deleteConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.</p>
    func describeCluster(input: DescribeClusterInput) async throws -> DescribeClusterOutputResponse
    {
        typealias describeClusterContinuation = CheckedContinuation<DescribeClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeClusterContinuation) in
            describeCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a description of the cluster operation specified by the ARN.</p>
    func describeClusterOperation(input: DescribeClusterOperationInput) async throws -> DescribeClusterOperationOutputResponse
    {
        typealias describeClusterOperationContinuation = CheckedContinuation<DescribeClusterOperationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeClusterOperationContinuation) in
            describeClusterOperation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a description of this MSK configuration.</p>
    func describeConfiguration(input: DescribeConfigurationInput) async throws -> DescribeConfigurationOutputResponse
    {
        typealias describeConfigurationContinuation = CheckedContinuation<DescribeConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConfigurationContinuation) in
            describeConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a description of this revision of the configuration.</p>
    func describeConfigurationRevision(input: DescribeConfigurationRevisionInput) async throws -> DescribeConfigurationRevisionOutputResponse
    {
        typealias describeConfigurationRevisionContinuation = CheckedContinuation<DescribeConfigurationRevisionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeConfigurationRevisionContinuation) in
            describeConfigurationRevision(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>A list of brokers that a client application can use to bootstrap.</p>
    func getBootstrapBrokers(input: GetBootstrapBrokersInput) async throws -> GetBootstrapBrokersOutputResponse
    {
        typealias getBootstrapBrokersContinuation = CheckedContinuation<GetBootstrapBrokersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getBootstrapBrokersContinuation) in
            getBootstrapBrokers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets the Apache Kafka versions to which you can update the MSK cluster.</p>
    func getCompatibleKafkaVersions(input: GetCompatibleKafkaVersionsInput) async throws -> GetCompatibleKafkaVersionsOutputResponse
    {
        typealias getCompatibleKafkaVersionsContinuation = CheckedContinuation<GetCompatibleKafkaVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCompatibleKafkaVersionsContinuation) in
            getCompatibleKafkaVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of all the operations that have been performed on the specified MSK cluster.</p>
    func listClusterOperations(input: ListClusterOperationsInput) async throws -> ListClusterOperationsOutputResponse
    {
        typealias listClusterOperationsContinuation = CheckedContinuation<ListClusterOperationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listClusterOperationsContinuation) in
            listClusterOperations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of all the MSK clusters in the current Region.</p>
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    {
        typealias listClustersContinuation = CheckedContinuation<ListClustersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listClustersContinuation) in
            listClusters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of all the MSK configurations in this Region.</p>
    func listConfigurationRevisions(input: ListConfigurationRevisionsInput) async throws -> ListConfigurationRevisionsOutputResponse
    {
        typealias listConfigurationRevisionsContinuation = CheckedContinuation<ListConfigurationRevisionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConfigurationRevisionsContinuation) in
            listConfigurationRevisions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of all the MSK configurations in this Region.</p>
    func listConfigurations(input: ListConfigurationsInput) async throws -> ListConfigurationsOutputResponse
    {
        typealias listConfigurationsContinuation = CheckedContinuation<ListConfigurationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConfigurationsContinuation) in
            listConfigurations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of Kafka versions.</p>
    func listKafkaVersions(input: ListKafkaVersionsInput) async throws -> ListKafkaVersionsOutputResponse
    {
        typealias listKafkaVersionsContinuation = CheckedContinuation<ListKafkaVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listKafkaVersionsContinuation) in
            listKafkaVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of the broker nodes in the cluster.</p>
    func listNodes(input: ListNodesInput) async throws -> ListNodesOutputResponse
    {
        typealias listNodesContinuation = CheckedContinuation<ListNodesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listNodesContinuation) in
            listNodes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of the Scram Secrets associated with an Amazon MSK cluster.</p>
    func listScramSecrets(input: ListScramSecretsInput) async throws -> ListScramSecretsOutputResponse
    {
        typealias listScramSecretsContinuation = CheckedContinuation<ListScramSecretsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listScramSecretsContinuation) in
            listScramSecrets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns a list of the tags associated with the specified resource.</p>
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

    /// Reboots brokers.
    func rebootBroker(input: RebootBrokerInput) async throws -> RebootBrokerOutputResponse
    {
        typealias rebootBrokerContinuation = CheckedContinuation<RebootBrokerOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: rebootBrokerContinuation) in
            rebootBroker(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Adds tags to the specified MSK resource.</p>
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

    /// <p>Removes the tags associated with the keys that are provided in the query.</p>
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

    /// <p>Updates the number of broker nodes in the cluster.</p>
    func updateBrokerCount(input: UpdateBrokerCountInput) async throws -> UpdateBrokerCountOutputResponse
    {
        typealias updateBrokerCountContinuation = CheckedContinuation<UpdateBrokerCountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateBrokerCountContinuation) in
            updateBrokerCount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the EBS storage associated with MSK brokers.</p>
    func updateBrokerStorage(input: UpdateBrokerStorageInput) async throws -> UpdateBrokerStorageOutputResponse
    {
        typealias updateBrokerStorageContinuation = CheckedContinuation<UpdateBrokerStorageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateBrokerStorageContinuation) in
            updateBrokerStorage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates EC2 instance type.</p>
    func updateBrokerType(input: UpdateBrokerTypeInput) async throws -> UpdateBrokerTypeOutputResponse
    {
        typealias updateBrokerTypeContinuation = CheckedContinuation<UpdateBrokerTypeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateBrokerTypeContinuation) in
            updateBrokerType(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the cluster with the configuration that is specified in the request body.</p>
    func updateClusterConfiguration(input: UpdateClusterConfigurationInput) async throws -> UpdateClusterConfigurationOutputResponse
    {
        typealias updateClusterConfigurationContinuation = CheckedContinuation<UpdateClusterConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateClusterConfigurationContinuation) in
            updateClusterConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the Apache Kafka version for the cluster.</p>
    func updateClusterKafkaVersion(input: UpdateClusterKafkaVersionInput) async throws -> UpdateClusterKafkaVersionOutputResponse
    {
        typealias updateClusterKafkaVersionContinuation = CheckedContinuation<UpdateClusterKafkaVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateClusterKafkaVersionContinuation) in
            updateClusterKafkaVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates an MSK configuration.</p>
    func updateConfiguration(input: UpdateConfigurationInput) async throws -> UpdateConfigurationOutputResponse
    {
        typealias updateConfigurationContinuation = CheckedContinuation<UpdateConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateConfigurationContinuation) in
            updateConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.</p>
    func updateMonitoring(input: UpdateMonitoringInput) async throws -> UpdateMonitoringOutputResponse
    {
        typealias updateMonitoringContinuation = CheckedContinuation<UpdateMonitoringOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateMonitoringContinuation) in
            updateMonitoring(input: input) { result in
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
