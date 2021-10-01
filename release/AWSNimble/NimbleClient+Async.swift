// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension NimbleClient {
    /// Accept EULAs.
    func acceptEulas(input: AcceptEulasInput) async throws -> AcceptEulasOutputResponse
    {
        typealias acceptEulasContinuation = CheckedContinuation<AcceptEulasOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: acceptEulasContinuation) in
            acceptEulas(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a launch profile.
    func createLaunchProfile(input: CreateLaunchProfileInput) async throws -> CreateLaunchProfileOutputResponse
    {
        typealias createLaunchProfileContinuation = CheckedContinuation<CreateLaunchProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLaunchProfileContinuation) in
            createLaunchProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a streaming image resource in a studio.
    func createStreamingImage(input: CreateStreamingImageInput) async throws -> CreateStreamingImageOutputResponse
    {
        typealias createStreamingImageContinuation = CheckedContinuation<CreateStreamingImageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStreamingImageContinuation) in
            createStreamingImage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a streaming session in a studio. After invoking this operation, you must poll GetStreamingSession until the streaming session is in state READY.
    func createStreamingSession(input: CreateStreamingSessionInput) async throws -> CreateStreamingSessionOutputResponse
    {
        typealias createStreamingSessionContinuation = CheckedContinuation<CreateStreamingSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStreamingSessionContinuation) in
            createStreamingSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a streaming session stream for a streaming session. After invoking this API, invoke GetStreamingSessionStream with the returned streamId to poll the resource until it is in state READY.
    func createStreamingSessionStream(input: CreateStreamingSessionStreamInput) async throws -> CreateStreamingSessionStreamOutputResponse
    {
        typealias createStreamingSessionStreamContinuation = CheckedContinuation<CreateStreamingSessionStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStreamingSessionStreamContinuation) in
            createStreamingSessionStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a new Studio. When creating a Studio, two IAM roles must be provided: the admin role and the user Role. These roles are assumed by your users when they log in to the Nimble Studio portal. The user role must have the AmazonNimbleStudio-StudioUser managed policy attached for the portal to function properly. The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed policy attached for the portal to function properly. You may optionally specify a KMS key in the StudioEncryptionConfiguration. In Nimble Studio, resource names, descriptions, initialization scripts, and other data you provide are always encrypted at rest using an KMS key. By default, this key is owned by Amazon Web Services and managed on your behalf. You may provide your own KMS key when calling CreateStudio to encrypt this data using a key you own and manage. When providing an KMS key during studio creation, Nimble Studio creates KMS grants in your account to provide your studio user and admin roles access to these KMS keys. If you delete this grant, the studio will no longer be accessible to your portal users. If you delete the studio KMS key, your studio will no longer be accessible.
    func createStudio(input: CreateStudioInput) async throws -> CreateStudioOutputResponse
    {
        typealias createStudioContinuation = CheckedContinuation<CreateStudioOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStudioContinuation) in
            createStudio(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a studio component resource.
    func createStudioComponent(input: CreateStudioComponentInput) async throws -> CreateStudioComponentOutputResponse
    {
        typealias createStudioComponentContinuation = CheckedContinuation<CreateStudioComponentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createStudioComponentContinuation) in
            createStudioComponent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently delete a launch profile.
    func deleteLaunchProfile(input: DeleteLaunchProfileInput) async throws -> DeleteLaunchProfileOutputResponse
    {
        typealias deleteLaunchProfileContinuation = CheckedContinuation<DeleteLaunchProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLaunchProfileContinuation) in
            deleteLaunchProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete a user from launch profile membership.
    func deleteLaunchProfileMember(input: DeleteLaunchProfileMemberInput) async throws -> DeleteLaunchProfileMemberOutputResponse
    {
        typealias deleteLaunchProfileMemberContinuation = CheckedContinuation<DeleteLaunchProfileMemberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLaunchProfileMemberContinuation) in
            deleteLaunchProfileMember(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete streaming image.
    func deleteStreamingImage(input: DeleteStreamingImageInput) async throws -> DeleteStreamingImageOutputResponse
    {
        typealias deleteStreamingImageContinuation = CheckedContinuation<DeleteStreamingImageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStreamingImageContinuation) in
            deleteStreamingImage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes streaming session resource. After invoking this operation, use GetStreamingSession to poll the resource until it transitions to a DELETED state. A streaming session will count against your streaming session quota until it is marked DELETED.
    func deleteStreamingSession(input: DeleteStreamingSessionInput) async throws -> DeleteStreamingSessionOutputResponse
    {
        typealias deleteStreamingSessionContinuation = CheckedContinuation<DeleteStreamingSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStreamingSessionContinuation) in
            deleteStreamingSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete a studio resource.
    func deleteStudio(input: DeleteStudioInput) async throws -> DeleteStudioOutputResponse
    {
        typealias deleteStudioContinuation = CheckedContinuation<DeleteStudioOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStudioContinuation) in
            deleteStudio(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a studio component resource.
    func deleteStudioComponent(input: DeleteStudioComponentInput) async throws -> DeleteStudioComponentOutputResponse
    {
        typealias deleteStudioComponentContinuation = CheckedContinuation<DeleteStudioComponentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStudioComponentContinuation) in
            deleteStudioComponent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete a user from studio membership.
    func deleteStudioMember(input: DeleteStudioMemberInput) async throws -> DeleteStudioMemberOutputResponse
    {
        typealias deleteStudioMemberContinuation = CheckedContinuation<DeleteStudioMemberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteStudioMemberContinuation) in
            deleteStudioMember(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get Eula.
    func getEula(input: GetEulaInput) async throws -> GetEulaOutputResponse
    {
        typealias getEulaContinuation = CheckedContinuation<GetEulaOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEulaContinuation) in
            getEula(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get a launch profile.
    func getLaunchProfile(input: GetLaunchProfileInput) async throws -> GetLaunchProfileOutputResponse
    {
        typealias getLaunchProfileContinuation = CheckedContinuation<GetLaunchProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLaunchProfileContinuation) in
            getLaunchProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Launch profile details include the launch profile resource and summary information of resources that are used by, or available to, the launch profile. This includes the name and description of all studio components used by the launch profiles, and the name and description of streaming images that can be used with this launch profile.
    func getLaunchProfileDetails(input: GetLaunchProfileDetailsInput) async throws -> GetLaunchProfileDetailsOutputResponse
    {
        typealias getLaunchProfileDetailsContinuation = CheckedContinuation<GetLaunchProfileDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLaunchProfileDetailsContinuation) in
            getLaunchProfileDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get a launch profile initialization.
    func getLaunchProfileInitialization(input: GetLaunchProfileInitializationInput) async throws -> GetLaunchProfileInitializationOutputResponse
    {
        typealias getLaunchProfileInitializationContinuation = CheckedContinuation<GetLaunchProfileInitializationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLaunchProfileInitializationContinuation) in
            getLaunchProfileInitialization(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get a user persona in launch profile membership.
    func getLaunchProfileMember(input: GetLaunchProfileMemberInput) async throws -> GetLaunchProfileMemberOutputResponse
    {
        typealias getLaunchProfileMemberContinuation = CheckedContinuation<GetLaunchProfileMemberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getLaunchProfileMemberContinuation) in
            getLaunchProfileMember(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get streaming image.
    func getStreamingImage(input: GetStreamingImageInput) async throws -> GetStreamingImageOutputResponse
    {
        typealias getStreamingImageContinuation = CheckedContinuation<GetStreamingImageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStreamingImageContinuation) in
            getStreamingImage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets StreamingSession resource. Invoke this operation to poll for a streaming session state while creating or deleting a session.
    func getStreamingSession(input: GetStreamingSessionInput) async throws -> GetStreamingSessionOutputResponse
    {
        typealias getStreamingSessionContinuation = CheckedContinuation<GetStreamingSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStreamingSessionContinuation) in
            getStreamingSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a StreamingSessionStream for a streaming session. Invoke this operation to poll the resource after invoking CreateStreamingSessionStream. After the StreamingSessionStream changes to the state READY, the url property will contain a stream to be used with the DCV streaming client.
    func getStreamingSessionStream(input: GetStreamingSessionStreamInput) async throws -> GetStreamingSessionStreamOutputResponse
    {
        typealias getStreamingSessionStreamContinuation = CheckedContinuation<GetStreamingSessionStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStreamingSessionStreamContinuation) in
            getStreamingSessionStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get a Studio resource.
    func getStudio(input: GetStudioInput) async throws -> GetStudioOutputResponse
    {
        typealias getStudioContinuation = CheckedContinuation<GetStudioOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStudioContinuation) in
            getStudio(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets a studio component resource.
    func getStudioComponent(input: GetStudioComponentInput) async throws -> GetStudioComponentOutputResponse
    {
        typealias getStudioComponentContinuation = CheckedContinuation<GetStudioComponentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStudioComponentContinuation) in
            getStudioComponent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get a user's membership in a studio.
    func getStudioMember(input: GetStudioMemberInput) async throws -> GetStudioMemberOutputResponse
    {
        typealias getStudioMemberContinuation = CheckedContinuation<GetStudioMemberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getStudioMemberContinuation) in
            getStudioMember(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List Eula Acceptances.
    func listEulaAcceptances(input: ListEulaAcceptancesInput) async throws -> ListEulaAcceptancesOutputResponse
    {
        typealias listEulaAcceptancesContinuation = CheckedContinuation<ListEulaAcceptancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEulaAcceptancesContinuation) in
            listEulaAcceptances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List Eulas.
    func listEulas(input: ListEulasInput) async throws -> ListEulasOutputResponse
    {
        typealias listEulasContinuation = CheckedContinuation<ListEulasOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEulasContinuation) in
            listEulas(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get all users in a given launch profile membership.
    func listLaunchProfileMembers(input: ListLaunchProfileMembersInput) async throws -> ListLaunchProfileMembersOutputResponse
    {
        typealias listLaunchProfileMembersContinuation = CheckedContinuation<ListLaunchProfileMembersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLaunchProfileMembersContinuation) in
            listLaunchProfileMembers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all the launch profiles a studio.
    func listLaunchProfiles(input: ListLaunchProfilesInput) async throws -> ListLaunchProfilesOutputResponse
    {
        typealias listLaunchProfilesContinuation = CheckedContinuation<ListLaunchProfilesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLaunchProfilesContinuation) in
            listLaunchProfiles(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the streaming image resources available to this studio. This list will contain both images provided by Amazon Web Services, as well as streaming images that you have created in your studio.
    func listStreamingImages(input: ListStreamingImagesInput) async throws -> ListStreamingImagesOutputResponse
    {
        typealias listStreamingImagesContinuation = CheckedContinuation<ListStreamingImagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStreamingImagesContinuation) in
            listStreamingImages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the streaming image resources in a studio.
    func listStreamingSessions(input: ListStreamingSessionsInput) async throws -> ListStreamingSessionsOutputResponse
    {
        typealias listStreamingSessionsContinuation = CheckedContinuation<ListStreamingSessionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStreamingSessionsContinuation) in
            listStreamingSessions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the StudioComponents in a studio.
    func listStudioComponents(input: ListStudioComponentsInput) async throws -> ListStudioComponentsOutputResponse
    {
        typealias listStudioComponentsContinuation = CheckedContinuation<ListStudioComponentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStudioComponentsContinuation) in
            listStudioComponents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get all users in a given studio membership.
    func listStudioMembers(input: ListStudioMembersInput) async throws -> ListStudioMembersOutputResponse
    {
        typealias listStudioMembersContinuation = CheckedContinuation<ListStudioMembersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStudioMembersContinuation) in
            listStudioMembers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List studios in your Amazon Web Services account in the requested Amazon Web Services Region.
    func listStudios(input: ListStudiosInput) async throws -> ListStudiosOutputResponse
    {
        typealias listStudiosContinuation = CheckedContinuation<ListStudiosOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listStudiosContinuation) in
            listStudios(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the tags for a resource, given its Amazon Resource Names (ARN). This operation supports ARNs for all resource types in Nimble Studio that support tags, including studio, studio component, launch profile, streaming image, and streaming session. All resources that can be tagged will contain an ARN property, so you do not have to create this ARN yourself.
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

    /// Add/update users with given persona to launch profile membership.
    func putLaunchProfileMembers(input: PutLaunchProfileMembersInput) async throws -> PutLaunchProfileMembersOutputResponse
    {
        typealias putLaunchProfileMembersContinuation = CheckedContinuation<PutLaunchProfileMembersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putLaunchProfileMembersContinuation) in
            putLaunchProfileMembers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Add/update users with given persona to studio membership.
    func putStudioMembers(input: PutStudioMembersInput) async throws -> PutStudioMembersOutputResponse
    {
        typealias putStudioMembersContinuation = CheckedContinuation<PutStudioMembersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putStudioMembersContinuation) in
            putStudioMembers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Repairs the SSO configuration for a given studio. If the studio has a valid Amazon Web Services SSO configuration currently associated with it, this operation will fail with a validation error. If the studio does not have a valid Amazon Web Services SSO configuration currently associated with it, then a new Amazon Web Services SSO application is created for the studio and the studio is changed to the READY state. After the Amazon Web Services SSO application is repaired, you must use the Amazon Nimble Studio console to add administrators and users to your studio.
    func startStudioSSOConfigurationRepair(input: StartStudioSSOConfigurationRepairInput) async throws -> StartStudioSSOConfigurationRepairOutputResponse
    {
        typealias startStudioSSOConfigurationRepairContinuation = CheckedContinuation<StartStudioSSOConfigurationRepairOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startStudioSSOConfigurationRepairContinuation) in
            startStudioSSOConfigurationRepair(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates tags for a resource, given its ARN.
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

    /// Deletes the tags for a resource.
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

    /// Update a launch profile.
    func updateLaunchProfile(input: UpdateLaunchProfileInput) async throws -> UpdateLaunchProfileOutputResponse
    {
        typealias updateLaunchProfileContinuation = CheckedContinuation<UpdateLaunchProfileOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLaunchProfileContinuation) in
            updateLaunchProfile(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update a user persona in launch profile membership.
    func updateLaunchProfileMember(input: UpdateLaunchProfileMemberInput) async throws -> UpdateLaunchProfileMemberOutputResponse
    {
        typealias updateLaunchProfileMemberContinuation = CheckedContinuation<UpdateLaunchProfileMemberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateLaunchProfileMemberContinuation) in
            updateLaunchProfileMember(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update streaming image.
    func updateStreamingImage(input: UpdateStreamingImageInput) async throws -> UpdateStreamingImageOutputResponse
    {
        typealias updateStreamingImageContinuation = CheckedContinuation<UpdateStreamingImageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateStreamingImageContinuation) in
            updateStreamingImage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update a Studio resource. Currently, this operation only supports updating the displayName of your studio.
    func updateStudio(input: UpdateStudioInput) async throws -> UpdateStudioOutputResponse
    {
        typealias updateStudioContinuation = CheckedContinuation<UpdateStudioOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateStudioContinuation) in
            updateStudio(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a studio component resource.
    func updateStudioComponent(input: UpdateStudioComponentInput) async throws -> UpdateStudioComponentOutputResponse
    {
        typealias updateStudioComponentContinuation = CheckedContinuation<UpdateStudioComponentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateStudioComponentContinuation) in
            updateStudioComponent(input: input) { result in
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
