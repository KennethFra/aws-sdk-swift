// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CustomerProfilesClient {
    /// Associates a new key value with a specific profile, such as a Contact Trace Record (CTR)
    ///          ContactId.
    ///          A profile object can have a single unique key and any number of additional keys that can
    ///          be used to identify the profile that it belongs to.
    func addProfileKey(input: AddProfileKeyInput) async throws -> AddProfileKeyOutputResponse
    {
        typealias addProfileKeyContinuation = CheckedContinuation<AddProfileKeyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addProfileKeyContinuation) in
            addProfileKey(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a domain, which is a container for all customer data, such as customer profile
    ///          attributes, object types, profile keys, and encryption keys. You can create multiple
    ///          domains, and each domain can have multiple third-party integrations.
    ///          Each Amazon Connect instance can be associated with only one domain. Multiple Amazon Connect instances can
    ///          be associated with one domain.
    ///          Use this API or <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html">UpdateDomain to
    ///          enable <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">identity
    ///             resolution: set Matching to true.
    func createDomain(input: CreateDomainInput) async throws -> CreateDomainOutputResponse
    {
        typealias createDomainContinuation = CheckedContinuation<CreateDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDomainContinuation) in
            createDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a standard profile.
    ///          A standard profile represents the following attributes for a customer profile in a
    ///          domain.
    func createProfile(input: CreateProfileInput) async throws -> CreateProfileOutputResponse
    {
        typealias createProfileContinuation = CheckedContinuation<CreateProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProfileContinuation) in
            createProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a specific domain and all of its customer data, such as customer profile
    ///          attributes and their related objects.
    func deleteDomain(input: DeleteDomainInput) async throws -> DeleteDomainOutputResponse
    {
        typealias deleteDomainContinuation = CheckedContinuation<DeleteDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDomainContinuation) in
            deleteDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes an integration from a specific domain.
    func deleteIntegration(input: DeleteIntegrationInput) async throws -> DeleteIntegrationOutputResponse
    {
        typealias deleteIntegrationContinuation = CheckedContinuation<DeleteIntegrationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteIntegrationContinuation) in
            deleteIntegration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the standard customer profile and all data pertaining to the profile.
    func deleteProfile(input: DeleteProfileInput) async throws -> DeleteProfileOutputResponse
    {
        typealias deleteProfileContinuation = CheckedContinuation<DeleteProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProfileContinuation) in
            deleteProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes a searchable key from a customer profile.
    func deleteProfileKey(input: DeleteProfileKeyInput) async throws -> DeleteProfileKeyOutputResponse
    {
        typealias deleteProfileKeyContinuation = CheckedContinuation<DeleteProfileKeyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProfileKeyContinuation) in
            deleteProfileKey(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes an object associated with a profile of a given ProfileObjectType.
    func deleteProfileObject(input: DeleteProfileObjectInput) async throws -> DeleteProfileObjectOutputResponse
    {
        typealias deleteProfileObjectContinuation = CheckedContinuation<DeleteProfileObjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProfileObjectContinuation) in
            deleteProfileObject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes a ProfileObjectType from a specific domain as well as removes all the
    ///          ProfileObjects of that type. It also disables integrations from this specific
    ///          ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that
    ///          were populated from this ProfileObjectType.
    func deleteProfileObjectType(input: DeleteProfileObjectTypeInput) async throws -> DeleteProfileObjectTypeOutputResponse
    {
        typealias deleteProfileObjectTypeContinuation = CheckedContinuation<DeleteProfileObjectTypeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProfileObjectTypeContinuation) in
            deleteProfileObjectType(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a specific domain.
    func getDomain(input: GetDomainInput) async throws -> GetDomainOutputResponse
    {
        typealias getDomainContinuation = CheckedContinuation<GetDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDomainContinuation) in
            getDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an integration for a domain.
    func getIntegration(input: GetIntegrationInput) async throws -> GetIntegrationOutputResponse
    {
        typealias getIntegrationContinuation = CheckedContinuation<GetIntegrationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getIntegrationContinuation) in
            getIntegration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// This API is in preview release for Amazon Connect and subject to change.
    ///          Before calling this API, use <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html">CreateDomain or
    ///             <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html">UpdateDomain to
    ///          enable identity resolution: set Matching to true.
    ///          GetMatches returns potentially matching profiles, based on the results of the latest run
    ///          of a machine learning process.
    ///
    ///             Amazon Connect starts a batch process every Saturday at 12AM UTC to identify matching profiles.
    ///             The results are returned up to seven days after the Saturday run.
    ///
    ///
    ///          Amazon Connect uses the following profile attributes to identify matches:
    ///
    ///
    ///                PhoneNumber
    ///
    ///
    ///                HomePhoneNumber
    ///
    ///
    ///                BusinessPhoneNumber
    ///
    ///
    ///                MobilePhoneNumber
    ///
    ///
    ///                EmailAddress
    ///
    ///
    ///                PersonalEmailAddress
    ///
    ///
    ///                BusinessEmailAddress
    ///
    ///
    ///                FullName
    ///
    ///
    ///                BusinessName
    ///
    ///
    ///          For example, two or more profiles—with spelling mistakes such as John Doe and Jhn Doe, or different casing
    ///          email addresses such as JOHN_DOE@ANYCOMPANY.COM and
    ///             johndoe@anycompany.com, or different phone number
    ///          formats such as 555-010-0000 and +1-555-010-0000—can be detected as belonging to the same customer John Doe and merged into a unified profile.
    func getMatches(input: GetMatchesInput) async throws -> GetMatchesOutputResponse
    {
        typealias getMatchesContinuation = CheckedContinuation<GetMatchesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getMatchesContinuation) in
            getMatches(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the object types for a specific domain.
    func getProfileObjectType(input: GetProfileObjectTypeInput) async throws -> GetProfileObjectTypeOutputResponse
    {
        typealias getProfileObjectTypeContinuation = CheckedContinuation<GetProfileObjectTypeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProfileObjectTypeContinuation) in
            getProfileObjectType(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the template information for a specific object type.
    ///          A template is a predefined ProfileObjectType, such as “Salesforce-Account” or
    ///          “Salesforce-Contact.” When a user sends a ProfileObject, using the PutProfileObject API,
    ///          with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings from the
    ///          template.
    func getProfileObjectTypeTemplate(input: GetProfileObjectTypeTemplateInput) async throws -> GetProfileObjectTypeTemplateOutputResponse
    {
        typealias getProfileObjectTypeTemplateContinuation = CheckedContinuation<GetProfileObjectTypeTemplateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProfileObjectTypeTemplateContinuation) in
            getProfileObjectTypeTemplate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the integrations associated to a specific URI in the AWS account.
    func listAccountIntegrations(input: ListAccountIntegrationsInput) async throws -> ListAccountIntegrationsOutputResponse
    {
        typealias listAccountIntegrationsContinuation = CheckedContinuation<ListAccountIntegrationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccountIntegrationsContinuation) in
            listAccountIntegrations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of all the domains for an AWS account that have been created.
    func listDomains(input: ListDomainsInput) async throws -> ListDomainsOutputResponse
    {
        typealias listDomainsContinuation = CheckedContinuation<ListDomainsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDomainsContinuation) in
            listDomains(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the integrations in your domain.
    func listIntegrations(input: ListIntegrationsInput) async throws -> ListIntegrationsOutputResponse
    {
        typealias listIntegrationsContinuation = CheckedContinuation<ListIntegrationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listIntegrationsContinuation) in
            listIntegrations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the template information for object types.
    func listProfileObjectTypeTemplates(input: ListProfileObjectTypeTemplatesInput) async throws -> ListProfileObjectTypeTemplatesOutputResponse
    {
        typealias listProfileObjectTypeTemplatesContinuation = CheckedContinuation<ListProfileObjectTypeTemplatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProfileObjectTypeTemplatesContinuation) in
            listProfileObjectTypeTemplates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the templates available within the service.
    func listProfileObjectTypes(input: ListProfileObjectTypesInput) async throws -> ListProfileObjectTypesOutputResponse
    {
        typealias listProfileObjectTypesContinuation = CheckedContinuation<ListProfileObjectTypesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProfileObjectTypesContinuation) in
            listProfileObjectTypes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of objects associated with a profile of a given ProfileObjectType.
    func listProfileObjects(input: ListProfileObjectsInput) async throws -> ListProfileObjectsOutputResponse
    {
        typealias listProfileObjectsContinuation = CheckedContinuation<ListProfileObjectsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProfileObjectsContinuation) in
            listProfileObjects(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect
    ///          Customer Profiles, domains, profile object types, and integrations can be tagged.
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

    /// This API is in preview release for Amazon Connect and subject to change.
    ///          Runs an AWS Lambda job that does the following:
    ///          <ol>
    ///
    ///                All the profileKeys in the ProfileToBeMerged will be moved to the
    ///                main profile.
    ///
    ///
    ///                All the objects in the ProfileToBeMerged will be moved to the main
    ///                profile.
    ///
    ///
    ///                All the ProfileToBeMerged will be deleted at the end.
    ///
    ///
    ///                All the profileKeys in the ProfileIdsToBeMerged will be moved to the
    ///                main profile.
    ///
    ///
    ///                Standard fields are merged as follows:
    ///                <ol>
    ///
    ///                      Fields are always "union"-ed if there are no conflicts in standard fields or
    ///                      attributeKeys.
    ///
    ///
    ///                      When there are conflicting fields:
    ///
    ///                      <ol>
    ///
    ///                            If no SourceProfileIds entry is specified, the main
    ///                            Profile value is always taken.
    ///
    ///
    ///                            If a SourceProfileIds entry is specified, the specified
    ///                            profileId is always taken, even if it is a NULL value.
    ///
    ///                      </ol>
    ///
    ///                </ol>
    ///
    ///          </ol>
    ///          You can use MergeProfiles together with <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches, which
    ///          returns potentially matching profiles, or use it with the results of another matching
    ///          system. After profiles have been merged, they cannot be separated (unmerged).
    func mergeProfiles(input: MergeProfilesInput) async throws -> MergeProfilesOutputResponse
    {
        typealias mergeProfilesContinuation = CheckedContinuation<MergeProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: mergeProfilesContinuation) in
            mergeProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds an integration between the service and a third-party service, which includes
    ///          Amazon AppFlow and Amazon Connect.
    ///          An integration can belong to only one domain.
    func putIntegration(input: PutIntegrationInput) async throws -> PutIntegrationOutputResponse
    {
        typealias putIntegrationContinuation = CheckedContinuation<PutIntegrationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putIntegrationContinuation) in
            putIntegration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds additional objects to customer profiles of a given ObjectType.
    ///          When adding a specific profile object, like a Contact Trace Record (CTR), an inferred
    ///          profile can get created if it is not mapped to an existing profile. The resulting profile
    ///          will only have a phone number populated in the standard ProfileObject. Any additional CTRs
    ///          with the same phone number will be mapped to the same inferred profile.
    ///          When a ProfileObject is created and if a ProfileObjectType already exists for the
    ///          ProfileObject, it will provide data to a standard profile depending on the
    ///          ProfileObjectType definition.
    ///          PutProfileObject needs an ObjectType, which can be created using
    ///          PutProfileObjectType.
    func putProfileObject(input: PutProfileObjectInput) async throws -> PutProfileObjectOutputResponse
    {
        typealias putProfileObjectContinuation = CheckedContinuation<PutProfileObjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putProfileObjectContinuation) in
            putProfileObject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Defines a ProfileObjectType.
    func putProfileObjectType(input: PutProfileObjectTypeInput) async throws -> PutProfileObjectTypeOutputResponse
    {
        typealias putProfileObjectTypeContinuation = CheckedContinuation<PutProfileObjectTypeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putProfileObjectTypeContinuation) in
            putProfileObjectType(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Searches for profiles within a specific domain name using name, phone number, email
    ///          address, account number, or a custom defined index.
    func searchProfiles(input: SearchProfilesInput) async throws -> SearchProfilesOutputResponse
    {
        typealias searchProfilesContinuation = CheckedContinuation<SearchProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: searchProfilesContinuation) in
            searchProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles
    ///          resource. Tags can help you organize and categorize your resources. You can also use them
    ///          to scope user permissions by granting a user permission to access or change only resources
    ///          with certain tag values. In Connect Customer Profiles, domains, profile object types, and
    ///          integrations can be tagged.
    ///          Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of
    ///          characters.
    ///          You can use the TagResource action with a resource that already has tags. If you specify
    ///          a new tag key, this tag is appended to the list of tags associated with the resource. If
    ///          you specify a tag key that is already associated with the resource, the new tag value that
    ///          you specify replaces the previous value for that tag.
    ///          You can associate as many as 50 tags with a resource.
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

    /// Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In Connect
    ///          Customer Profiles, domains, profile object types, and integrations can be tagged.
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

    /// Updates the properties of a domain, including creating or selecting a dead letter queue
    ///          or an encryption key.
    ///          After a domain is created, the name can’t be changed.
    ///          Use this API or <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html">CreateDomain to
    ///          enable <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">identity
    ///             resolution: set Matching to true.
    func updateDomain(input: UpdateDomainInput) async throws -> UpdateDomainOutputResponse
    {
        typealias updateDomainContinuation = CheckedContinuation<UpdateDomainOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDomainContinuation) in
            updateDomain(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the properties of a profile. The ProfileId is required for updating a customer
    ///          profile.
    ///          When calling the UpdateProfile API, specifying an empty string value means that any
    ///          existing value will be removed. Not specifying a string value means that any value already
    ///          there will be kept.
    func updateProfile(input: UpdateProfileInput) async throws -> UpdateProfileOutputResponse
    {
        typealias updateProfileContinuation = CheckedContinuation<UpdateProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProfileContinuation) in
            updateProfile(input: input) { result in
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
