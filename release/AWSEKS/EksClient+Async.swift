// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension EksClient {
    /// Associate encryption configuration to an existing cluster. You can use this API to enable encryption on existing clusters which do not have encryption already enabled. This allows you to implement a defense-in-depth security strategy without migrating applications to new Amazon EKS clusters.
    func associateEncryptionConfig(input: AssociateEncryptionConfigInput) async throws -> AssociateEncryptionConfigOutputResponse
    {
        typealias associateEncryptionConfigContinuation = CheckedContinuation<AssociateEncryptionConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateEncryptionConfigContinuation) in
            associateEncryptionConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associate an identity provider configuration to a cluster. If you want to authenticate identities using an identity provider, you can create an identity provider configuration and associate it to your cluster. After configuring authentication to your cluster you can create Kubernetes roles and clusterroles to assign permissions to the roles, and then bind the roles to the identities using Kubernetes rolebindings and clusterrolebindings. For more information see [Using RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/) in the Kubernetes documentation.
    func associateIdentityProviderConfig(input: AssociateIdentityProviderConfigInput) async throws -> AssociateIdentityProviderConfigOutputResponse
    {
        typealias associateIdentityProviderConfigContinuation = CheckedContinuation<AssociateIdentityProviderConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateIdentityProviderConfigContinuation) in
            associateIdentityProviderConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Amazon EKS add-on. Amazon EKS add-ons help to automate the provisioning and lifecycle management of common operational software for Amazon EKS clusters. Amazon EKS add-ons can only be used with Amazon EKS clusters running version 1.18 with platform version eks.3 or later because add-ons rely on the Server-side Apply Kubernetes feature, which is only available in Kubernetes 1.18 and later.
    func createAddon(input: CreateAddonInput) async throws -> CreateAddonOutputResponse
    {
        typealias createAddonContinuation = CheckedContinuation<CreateAddonOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAddonContinuation) in
            createAddon(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Amazon EKS control plane. The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, such as etcd and the API server. The control plane runs in an account managed by Amazon Web Services, and the Kubernetes API is exposed via the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is single-tenant and unique and runs on its own set of Amazon EC2 instances. The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the nodes (for example, to support kubectl exec, logs, and proxy data flows). Amazon EKS nodes run in your Amazon Web Services account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster. Cluster creation typically takes several minutes. After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch nodes into your cluster. For more information, see [Managing Cluster Authentication](https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html) and [Launching Amazon EKS nodes](https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html) in the Amazon EKS User Guide.
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

    /// Creates an Fargate profile for your Amazon EKS cluster. You must have at least one Fargate profile in a cluster to be able to run pods on Fargate. The Fargate profile allows an administrator to declare which pods run on Fargate and specify which pods run on which Fargate profile. This declaration is done through the profile’s selectors. Each profile can have up to five selectors that contain a namespace and labels. A namespace is required for every selector. The label field consists of multiple optional key-value pairs. Pods that match the selectors are scheduled on Fargate. If a to-be-scheduled pod matches any of the selectors in the Fargate profile, then that pod is run on Fargate. When you create a Fargate profile, you must specify a pod execution role to use with the pods that are scheduled with the profile. This role is added to the cluster's Kubernetes [Role Based Access Control](https://kubernetes.io/docs/admin/authorization/rbac/) (RBAC) for authorization so that the kubelet that is running on the Fargate infrastructure can register with your Amazon EKS cluster so that it can appear in your cluster as a node. The pod execution role also provides IAM permissions to the Fargate infrastructure to allow read access to Amazon ECR image repositories. For more information, see [Pod Execution Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html) in the Amazon EKS User Guide. Fargate profiles are immutable. However, you can create a new updated profile to replace an existing profile and then delete the original after the updated profile has finished creating. If any Fargate profiles in a cluster are in the DELETING status, you must wait for that Fargate profile to finish deleting before you can create any other profiles in that cluster. For more information, see [Fargate Profile](https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html) in the Amazon EKS User Guide.
    func createFargateProfile(input: CreateFargateProfileInput) async throws -> CreateFargateProfileOutputResponse
    {
        typealias createFargateProfileContinuation = CheckedContinuation<CreateFargateProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createFargateProfileContinuation) in
            createFargateProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a managed node group for an Amazon EKS cluster. You can only create a node group for your cluster that is equal to the current Kubernetes version for the cluster. All node groups are created with the latest AMI release version for the respective minor Kubernetes version of the cluster, unless you deploy a custom AMI using a launch template. For more information about using launch templates, see [Launch template support](https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html). An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and associated Amazon EC2 instances that are managed by Amazon Web Services for an Amazon EKS cluster. Each node group uses a version of the Amazon EKS optimized Amazon Linux 2 AMI. For more information, see [Managed Node Groups](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html) in the Amazon EKS User Guide.
    func createNodegroup(input: CreateNodegroupInput) async throws -> CreateNodegroupOutputResponse
    {
        typealias createNodegroupContinuation = CheckedContinuation<CreateNodegroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createNodegroupContinuation) in
            createNodegroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete an Amazon EKS add-on. When you remove the add-on, it will also be deleted from the cluster. You can always manually start an add-on on the cluster using the Kubernetes API.
    func deleteAddon(input: DeleteAddonInput) async throws -> DeleteAddonOutputResponse
    {
        typealias deleteAddonContinuation = CheckedContinuation<DeleteAddonOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAddonContinuation) in
            deleteAddon(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the Amazon EKS cluster control plane. If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see [Deleting a Cluster](https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html) in the Amazon EKS User Guide. If you have managed node groups or Fargate profiles attached to the cluster, you must delete them first. For more information, see [DeleteNodegroup] and [DeleteFargateProfile].
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

    /// Deletes an Fargate profile. When you delete a Fargate profile, any pods running on Fargate that were created with the profile are deleted. If those pods match another Fargate profile, then they are scheduled on Fargate with that profile. If they no longer match any Fargate profiles, then they are not scheduled on Fargate and they may remain in a pending state. Only one Fargate profile in a cluster can be in the DELETING status at a time. You must wait for a Fargate profile to finish deleting before you can delete any other profiles in that cluster.
    func deleteFargateProfile(input: DeleteFargateProfileInput) async throws -> DeleteFargateProfileOutputResponse
    {
        typealias deleteFargateProfileContinuation = CheckedContinuation<DeleteFargateProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteFargateProfileContinuation) in
            deleteFargateProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Amazon EKS node group for a cluster.
    func deleteNodegroup(input: DeleteNodegroupInput) async throws -> DeleteNodegroupOutputResponse
    {
        typealias deleteNodegroupContinuation = CheckedContinuation<DeleteNodegroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteNodegroupContinuation) in
            deleteNodegroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deregisters a connected cluster to remove it from the Amazon EKS control plane.
    func deregisterCluster(input: DeregisterClusterInput) async throws -> DeregisterClusterOutputResponse
    {
        typealias deregisterClusterContinuation = CheckedContinuation<DeregisterClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deregisterClusterContinuation) in
            deregisterCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes an Amazon EKS add-on.
    func describeAddon(input: DescribeAddonInput) async throws -> DescribeAddonOutputResponse
    {
        typealias describeAddonContinuation = CheckedContinuation<DescribeAddonOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAddonContinuation) in
            describeAddon(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the Kubernetes versions that the add-on can be used with.
    func describeAddonVersions(input: DescribeAddonVersionsInput) async throws -> DescribeAddonVersionsOutputResponse
    {
        typealias describeAddonVersionsContinuation = CheckedContinuation<DescribeAddonVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAddonVersionsContinuation) in
            describeAddonVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns descriptive information about an Amazon EKS cluster. The API server endpoint and certificate authority data returned by this operation are required for kubelet and kubectl to communicate with your Kubernetes API server. For more information, see [Create a kubeconfig for Amazon EKS](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html). The API server endpoint and certificate authority data aren't available until the cluster reaches the ACTIVE state.
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

    /// Returns descriptive information about an Fargate profile.
    func describeFargateProfile(input: DescribeFargateProfileInput) async throws -> DescribeFargateProfileOutputResponse
    {
        typealias describeFargateProfileContinuation = CheckedContinuation<DescribeFargateProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFargateProfileContinuation) in
            describeFargateProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns descriptive information about an identity provider configuration.
    func describeIdentityProviderConfig(input: DescribeIdentityProviderConfigInput) async throws -> DescribeIdentityProviderConfigOutputResponse
    {
        typealias describeIdentityProviderConfigContinuation = CheckedContinuation<DescribeIdentityProviderConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeIdentityProviderConfigContinuation) in
            describeIdentityProviderConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns descriptive information about an Amazon EKS node group.
    func describeNodegroup(input: DescribeNodegroupInput) async throws -> DescribeNodegroupOutputResponse
    {
        typealias describeNodegroupContinuation = CheckedContinuation<DescribeNodegroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeNodegroupContinuation) in
            describeNodegroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns descriptive information about an update against your Amazon EKS cluster or associated managed node group. When the status of the update is Succeeded, the update is complete. If an update fails, the status is Failed, and an error detail explains the reason for the failure.
    func describeUpdate(input: DescribeUpdateInput) async throws -> DescribeUpdateOutputResponse
    {
        typealias describeUpdateContinuation = CheckedContinuation<DescribeUpdateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeUpdateContinuation) in
            describeUpdate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates an identity provider configuration from a cluster. If you disassociate an identity provider from your cluster, users included in the provider can no longer access the cluster. However, you can still access the cluster with Amazon Web Services IAM users.
    func disassociateIdentityProviderConfig(input: DisassociateIdentityProviderConfigInput) async throws -> DisassociateIdentityProviderConfigOutputResponse
    {
        typealias disassociateIdentityProviderConfigContinuation = CheckedContinuation<DisassociateIdentityProviderConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateIdentityProviderConfigContinuation) in
            disassociateIdentityProviderConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the available add-ons.
    func listAddons(input: ListAddonsInput) async throws -> ListAddonsOutputResponse
    {
        typealias listAddonsContinuation = CheckedContinuation<ListAddonsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAddonsContinuation) in
            listAddons(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the Amazon EKS clusters in your Amazon Web Services account in the specified Region.
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

    /// Lists the Fargate profiles associated with the specified cluster in your Amazon Web Services account in the specified Region.
    func listFargateProfiles(input: ListFargateProfilesInput) async throws -> ListFargateProfilesOutputResponse
    {
        typealias listFargateProfilesContinuation = CheckedContinuation<ListFargateProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFargateProfilesContinuation) in
            listFargateProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// A list of identity provider configurations.
    func listIdentityProviderConfigs(input: ListIdentityProviderConfigsInput) async throws -> ListIdentityProviderConfigsOutputResponse
    {
        typealias listIdentityProviderConfigsContinuation = CheckedContinuation<ListIdentityProviderConfigsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listIdentityProviderConfigsContinuation) in
            listIdentityProviderConfigs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the Amazon EKS managed node groups associated with the specified cluster in your Amazon Web Services account in the specified Region. Self-managed node groups are not listed.
    func listNodegroups(input: ListNodegroupsInput) async throws -> ListNodegroupsOutputResponse
    {
        typealias listNodegroupsContinuation = CheckedContinuation<ListNodegroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listNodegroupsContinuation) in
            listNodegroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the tags for an Amazon EKS resource.
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

    /// Lists the updates associated with an Amazon EKS cluster or managed node group in your Amazon Web Services account, in the specified Region.
    func listUpdates(input: ListUpdatesInput) async throws -> ListUpdatesOutputResponse
    {
        typealias listUpdatesContinuation = CheckedContinuation<ListUpdatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listUpdatesContinuation) in
            listUpdates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Connects a Kubernetes cluster to the Amazon EKS control plane. Any Kubernetes cluster can be connected to the Amazon EKS control plane to view current information about the cluster and its nodes. Cluster connection requires two steps. First, send a [RegisterClusterRequest] to add it to the Amazon EKS control plane. Second, a [Manifest](https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml) containing the activationID and activationCode must be applied to the Kubernetes cluster through it's native provider to provide visibility. After the Manifest is updated and applied, then the connected cluster is visible to the Amazon EKS control plane. If the Manifest is not applied within a set amount of time, then the connected cluster will no longer be visible and must be deregistered. See [DeregisterCluster].
    func registerCluster(input: RegisterClusterInput) async throws -> RegisterClusterOutputResponse
    {
        typealias registerClusterContinuation = CheckedContinuation<RegisterClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: registerClusterContinuation) in
            registerCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well. Tags that you create for Amazon EKS resources do not propagate to any other resources associated with the cluster. For example, if you tag a cluster with this operation, that tag does not automatically propagate to the subnets and nodes associated with the cluster.
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

    /// Deletes specified tags from a resource.
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

    /// Updates an Amazon EKS add-on.
    func updateAddon(input: UpdateAddonInput) async throws -> UpdateAddonOutputResponse
    {
        typealias updateAddonContinuation = CheckedContinuation<UpdateAddonOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAddonContinuation) in
            updateAddon(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an Amazon EKS cluster configuration. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the [DescribeUpdate] API operation. You can use this API operation to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see [Amazon EKS Cluster Control Plane Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html) in the Amazon EKS User Guide . CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see [CloudWatch Pricing](http://aws.amazon.com/cloudwatch/pricing/). You can also use this API operation to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see [Amazon EKS cluster endpoint access control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html) in the Amazon EKS User Guide . You can't update the subnets or security group IDs for an existing cluster. Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to UPDATING (this status transition is eventually consistent). When the update is complete (either Failed or Successful), the cluster status moves to Active.
    func updateClusterConfig(input: UpdateClusterConfigInput) async throws -> UpdateClusterConfigOutputResponse
    {
        typealias updateClusterConfigContinuation = CheckedContinuation<UpdateClusterConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateClusterConfigContinuation) in
            updateClusterConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an Amazon EKS cluster to the specified Kubernetes version. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the [DescribeUpdate] API operation. Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to UPDATING (this status transition is eventually consistent). When the update is complete (either Failed or Successful), the cluster status moves to Active. If your cluster has managed node groups attached to it, all of your node groups’ Kubernetes versions must match the cluster’s Kubernetes version in order to update the cluster to a new Kubernetes version.
    func updateClusterVersion(input: UpdateClusterVersionInput) async throws -> UpdateClusterVersionOutputResponse
    {
        typealias updateClusterVersionContinuation = CheckedContinuation<UpdateClusterVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateClusterVersionContinuation) in
            updateClusterVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an Amazon EKS managed node group configuration. Your node group continues to function during the update. The response output includes an update ID that you can use to track the status of your node group update with the [DescribeUpdate] API operation. Currently you can update the Kubernetes labels for a node group or the scaling configuration.
    func updateNodegroupConfig(input: UpdateNodegroupConfigInput) async throws -> UpdateNodegroupConfigOutputResponse
    {
        typealias updateNodegroupConfigContinuation = CheckedContinuation<UpdateNodegroupConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateNodegroupConfigContinuation) in
            updateNodegroupConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the Kubernetes version or AMI version of an Amazon EKS managed node group. You can update a node group using a launch template only if the node group was originally deployed with a launch template. If you need to update a custom AMI in a node group that was deployed with a launch template, then update your custom AMI, specify the new ID in a new version of the launch template, and then update the node group to the new version of the launch template. If you update without a launch template, then you can update to the latest available AMI version of a node group's current Kubernetes version by not specifying a Kubernetes version in the request. You can update to the latest AMI version of your cluster's current Kubernetes version by specifying your cluster's Kubernetes version in the request. For more information, see [Amazon EKS optimized Amazon Linux 2 AMI versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html) in the Amazon EKS User Guide. You cannot roll back a node group to an earlier Kubernetes version or AMI version. When a node in a managed node group is terminated due to a scaling action or update, the pods in that node are drained first. Amazon EKS attempts to drain the nodes gracefully and will fail if it is unable to do so. You can force the update if Amazon EKS is unable to drain the nodes as a result of a pod disruption budget issue.
    func updateNodegroupVersion(input: UpdateNodegroupVersionInput) async throws -> UpdateNodegroupVersionOutputResponse
    {
        typealias updateNodegroupVersionContinuation = CheckedContinuation<UpdateNodegroupVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateNodegroupVersionContinuation) in
            updateNodegroupVersion(input: input) { result in
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
