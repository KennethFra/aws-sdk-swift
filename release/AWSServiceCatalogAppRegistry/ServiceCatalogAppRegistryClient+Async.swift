// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ServiceCatalogAppRegistryClient {
    /// Associates an attribute group with an application to augment the application's metadata
    ///       with the group's attributes. This feature enables applications to be described with
    ///       user-defined details that are machine-readable, such as third-party integrations.
    func associateAttributeGroup(input: AssociateAttributeGroupInput) async throws -> AssociateAttributeGroupOutputResponse
    {
        typealias associateAttributeGroupContinuation = CheckedContinuation<AssociateAttributeGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateAttributeGroupContinuation) in
            associateAttributeGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associates a resource with an application. Both the resource and the application can be specified either by ID or name.
    func associateResource(input: AssociateResourceInput) async throws -> AssociateResourceOutputResponse
    {
        typealias associateResourceContinuation = CheckedContinuation<AssociateResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateResourceContinuation) in
            associateResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    {
        typealias createApplicationContinuation = CheckedContinuation<CreateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createApplicationContinuation) in
            createApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new attribute group as a container for user-defined attributes. This feature
    ///       enables users to have full control over their cloud application's metadata in a rich
    ///       machine-readable format to facilitate integration with automated workflows and third-party
    ///       tools.
    func createAttributeGroup(input: CreateAttributeGroupInput) async throws -> CreateAttributeGroupOutputResponse
    {
        typealias createAttributeGroupContinuation = CheckedContinuation<CreateAttributeGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAttributeGroupContinuation) in
            createAttributeGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an application that is specified either by its application ID or name. All associated attribute groups and resources must be disassociated from it before deleting an application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    {
        typealias deleteApplicationContinuation = CheckedContinuation<DeleteApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteApplicationContinuation) in
            deleteApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an attribute group, specified either by its attribute group ID or name.
    func deleteAttributeGroup(input: DeleteAttributeGroupInput) async throws -> DeleteAttributeGroupOutputResponse
    {
        typealias deleteAttributeGroupContinuation = CheckedContinuation<DeleteAttributeGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAttributeGroupContinuation) in
            deleteAttributeGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts AssociateAttributeGroup.
    func disassociateAttributeGroup(input: DisassociateAttributeGroupInput) async throws -> DisassociateAttributeGroupOutputResponse
    {
        typealias disassociateAttributeGroupContinuation = CheckedContinuation<DisassociateAttributeGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateAttributeGroupContinuation) in
            disassociateAttributeGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates a resource from application. Both the resource and the application can be specified either by ID or name.
    func disassociateResource(input: DisassociateResourceInput) async throws -> DisassociateResourceOutputResponse
    {
        typealias disassociateResourceContinuation = CheckedContinuation<DisassociateResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateResourceContinuation) in
            disassociateResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves metadata information about one of your applications. The application can be specified either by its unique ID or by its name (which is unique within one account in one region at a given point in time). Specify by ID in automated workflows if you want to make sure that the exact same application is returned or a ResourceNotFoundException is thrown, avoiding the ABA addressing problem.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    {
        typealias getApplicationContinuation = CheckedContinuation<GetApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getApplicationContinuation) in
            getApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the resource associated with the application.
    func getAssociatedResource(input: GetAssociatedResourceInput) async throws -> GetAssociatedResourceOutputResponse
    {
        typealias getAssociatedResourceContinuation = CheckedContinuation<GetAssociatedResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAssociatedResourceContinuation) in
            getAssociatedResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves an attribute group, either by its name or its ID. The attribute group can be specified either by its unique ID or by its name.
    func getAttributeGroup(input: GetAttributeGroupInput) async throws -> GetAttributeGroupOutputResponse
    {
        typealias getAttributeGroupContinuation = CheckedContinuation<GetAttributeGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAttributeGroupContinuation) in
            getAttributeGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all of your applications. Results are paginated.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    {
        typealias listApplicationsContinuation = CheckedContinuation<ListApplicationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationsContinuation) in
            listApplications(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all attribute groups that are associated with specified application.  Results are paginated.
    func listAssociatedAttributeGroups(input: ListAssociatedAttributeGroupsInput) async throws -> ListAssociatedAttributeGroupsOutputResponse
    {
        typealias listAssociatedAttributeGroupsContinuation = CheckedContinuation<ListAssociatedAttributeGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssociatedAttributeGroupsContinuation) in
            listAssociatedAttributeGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all resources that are associated with specified application. Results are paginated.
    func listAssociatedResources(input: ListAssociatedResourcesInput) async throws -> ListAssociatedResourcesOutputResponse
    {
        typealias listAssociatedResourcesContinuation = CheckedContinuation<ListAssociatedResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssociatedResourcesContinuation) in
            listAssociatedResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all attribute groups which you have access to. Results are paginated.
    func listAttributeGroups(input: ListAttributeGroupsInput) async throws -> ListAttributeGroupsOutputResponse
    {
        typealias listAttributeGroupsContinuation = CheckedContinuation<ListAttributeGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAttributeGroupsContinuation) in
            listAttributeGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the tags on the resource.
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

    /// Syncs the resource with current AppRegistry records.
    ///          Specifically, the resource’s AppRegistry system tags sync with its associated application. We remove the resource's AppRegistry system tags if it does not associate with the application. The caller must have permissions to read and update the resource.
    func syncResource(input: SyncResourceInput) async throws -> SyncResourceOutputResponse
    {
        typealias syncResourceContinuation = CheckedContinuation<SyncResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: syncResourceContinuation) in
            syncResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Assigns one or more tags (key-value pairs) to the specified resource.
    ///          Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.
    ///          This operation returns an empty response if the call was successful.
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

    /// Removes tags from a resource.
    ///          This operation returns an empty response if the call was successful.
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

    /// Updates an existing application with new attributes.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    {
        typealias updateApplicationContinuation = CheckedContinuation<UpdateApplicationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateApplicationContinuation) in
            updateApplication(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing attribute group with new details.
    func updateAttributeGroup(input: UpdateAttributeGroupInput) async throws -> UpdateAttributeGroupOutputResponse
    {
        typealias updateAttributeGroupContinuation = CheckedContinuation<UpdateAttributeGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAttributeGroupContinuation) in
            updateAttributeGroup(input: input) { result in
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
