// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension FmsClient {
    /// Sets the Firewall Manager administrator account. The account must be
    ///       a member of the organization in Organizations whose resources you want to protect.
    ///           Firewall Manager sets the permissions that allow the account to administer your Firewall Manager policies.
    ///          The account that you associate with Firewall Manager is called the Firewall Manager administrator account.
    func associateAdminAccount(input: AssociateAdminAccountInput) async throws -> AssociateAdminAccountOutputResponse
    {
        typealias associateAdminAccountContinuation = CheckedContinuation<AssociateAdminAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateAdminAccountContinuation) in
            associateAdminAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently deletes an Firewall Manager applications list.
    func deleteAppsList(input: DeleteAppsListInput) async throws -> DeleteAppsListOutputResponse
    {
        typealias deleteAppsListContinuation = CheckedContinuation<DeleteAppsListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAppsListContinuation) in
            deleteAppsList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Firewall Manager association with the IAM role and the Amazon Simple
    ///       Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.
    func deleteNotificationChannel(input: DeleteNotificationChannelInput) async throws -> DeleteNotificationChannelOutputResponse
    {
        typealias deleteNotificationChannelContinuation = CheckedContinuation<DeleteNotificationChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteNotificationChannelContinuation) in
            deleteNotificationChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently deletes an Firewall Manager policy.
    func deletePolicy(input: DeletePolicyInput) async throws -> DeletePolicyOutputResponse
    {
        typealias deletePolicyContinuation = CheckedContinuation<DeletePolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePolicyContinuation) in
            deletePolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently deletes an Firewall Manager protocols list.
    func deleteProtocolsList(input: DeleteProtocolsListInput) async throws -> DeleteProtocolsListOutputResponse
    {
        typealias deleteProtocolsListContinuation = CheckedContinuation<DeleteProtocolsListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProtocolsListContinuation) in
            deleteProtocolsList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates the account that has been set as the Firewall Manager administrator
    ///       account. To set a different account as the administrator account, you must submit an
    ///         AssociateAdminAccount request.
    func disassociateAdminAccount(input: DisassociateAdminAccountInput) async throws -> DisassociateAdminAccountOutputResponse
    {
        typealias disassociateAdminAccountContinuation = CheckedContinuation<DisassociateAdminAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateAdminAccountContinuation) in
            disassociateAdminAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the Organizations account that is associated with Firewall Manager
    ///       as the Firewall Manager administrator.
    func getAdminAccount(input: GetAdminAccountInput) async throws -> GetAdminAccountOutputResponse
    {
        typealias getAdminAccountContinuation = CheckedContinuation<GetAdminAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAdminAccountContinuation) in
            getAdminAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about the specified Firewall Manager applications list.
    func getAppsList(input: GetAppsListInput) async throws -> GetAppsListOutputResponse
    {
        typealias getAppsListContinuation = CheckedContinuation<GetAppsListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAppsListContinuation) in
            getAppsList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns detailed compliance information about the specified member account. Details
    ///       include resources that are in and out of compliance with the specified policy.
    ///
    ///
    ///               Resources are
    ///               considered noncompliant for WAF and Shield Advanced policies if the specified policy has
    ///               not been applied to them.
    ///
    ///
    ///               Resources are considered noncompliant for security group policies if
    ///               they are in scope of the policy, they violate one or more of the policy rules, and remediation
    ///               is disabled or not possible.
    ///
    ///
    ///               Resources are considered noncompliant for Network Firewall policies
    ///                 if a firewall is missing in the VPC, if the firewall endpoint isn't set up in an expected Availability Zone and subnet,
    ///                 if a subnet created by the Firewall Manager doesn't have the expected route table,
    ///                 and for modifications to a firewall policy that violate the Firewall Manager policy's rules.
    ///
    ///
    ///               Resources are considered noncompliant for DNS Firewall policies
    ///               if a DNS Firewall rule group is missing from the rule group associations for the VPC.
    ///
    ///
    func getComplianceDetail(input: GetComplianceDetailInput) async throws -> GetComplianceDetailOutputResponse
    {
        typealias getComplianceDetailContinuation = CheckedContinuation<GetComplianceDetailOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getComplianceDetailContinuation) in
            getComplianceDetail(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Information
    ///       about the Amazon Simple Notification Service (SNS) topic that is used to
    ///       record Firewall Manager SNS logs.
    func getNotificationChannel(input: GetNotificationChannelInput) async throws -> GetNotificationChannelOutputResponse
    {
        typealias getNotificationChannelContinuation = CheckedContinuation<GetNotificationChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getNotificationChannelContinuation) in
            getNotificationChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about the specified Firewall Manager policy.
    func getPolicy(input: GetPolicyInput) async throws -> GetPolicyOutputResponse
    {
        typealias getPolicyContinuation = CheckedContinuation<GetPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getPolicyContinuation) in
            getPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// If you created a Shield Advanced policy, returns policy-level attack summary information
    ///          in the event of a potential DDoS attack. Other policy types are currently unsupported.
    func getProtectionStatus(input: GetProtectionStatusInput) async throws -> GetProtectionStatusOutputResponse
    {
        typealias getProtectionStatusContinuation = CheckedContinuation<GetProtectionStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProtectionStatusContinuation) in
            getProtectionStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about the specified Firewall Manager protocols list.
    func getProtocolsList(input: GetProtocolsListInput) async throws -> GetProtocolsListOutputResponse
    {
        typealias getProtocolsListContinuation = CheckedContinuation<GetProtocolsListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getProtocolsListContinuation) in
            getProtocolsList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.
    func getViolationDetails(input: GetViolationDetailsInput) async throws -> GetViolationDetailsOutputResponse
    {
        typealias getViolationDetailsContinuation = CheckedContinuation<GetViolationDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getViolationDetailsContinuation) in
            getViolationDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of AppsListDataSummary objects.
    func listAppsLists(input: ListAppsListsInput) async throws -> ListAppsListsOutputResponse
    {
        typealias listAppsListsContinuation = CheckedContinuation<ListAppsListsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAppsListsContinuation) in
            listAppsLists(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of PolicyComplianceStatus objects. Use
    ///         PolicyComplianceStatus to get a summary of which member accounts are protected
    ///       by the specified policy.
    func listComplianceStatus(input: ListComplianceStatusInput) async throws -> ListComplianceStatusOutputResponse
    {
        typealias listComplianceStatusContinuation = CheckedContinuation<ListComplianceStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listComplianceStatusContinuation) in
            listComplianceStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a MemberAccounts object that lists the member accounts in the
    ///       administrator's Amazon Web Services organization.
    ///          The ListMemberAccounts must be submitted by the account that is set as the
    ///       Firewall Manager administrator.
    func listMemberAccounts(input: ListMemberAccountsInput) async throws -> ListMemberAccountsOutputResponse
    {
        typealias listMemberAccountsContinuation = CheckedContinuation<ListMemberAccountsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listMemberAccountsContinuation) in
            listMemberAccounts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of PolicySummary objects.
    func listPolicies(input: ListPoliciesInput) async throws -> ListPoliciesOutputResponse
    {
        typealias listPoliciesContinuation = CheckedContinuation<ListPoliciesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPoliciesContinuation) in
            listPolicies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of ProtocolsListDataSummary objects.
    func listProtocolsLists(input: ListProtocolsListsInput) async throws -> ListProtocolsListsOutputResponse
    {
        typealias listProtocolsListsContinuation = CheckedContinuation<ListProtocolsListsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProtocolsListsContinuation) in
            listProtocolsLists(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the list of tags for the specified Amazon Web Services resource.
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

    /// Creates an Firewall Manager applications list.
    func putAppsList(input: PutAppsListInput) async throws -> PutAppsListOutputResponse
    {
        typealias putAppsListContinuation = CheckedContinuation<PutAppsListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putAppsListContinuation) in
            putAppsList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Designates the IAM role and Amazon Simple Notification Service (SNS) topic that
    ///       Firewall Manager uses to record SNS logs.
    ///          To perform this action outside of the console, you must configure the SNS topic to allow the Firewall Manager
    ///       role AWSServiceRoleForFMS to publish SNS logs. For more information, see
    ///       <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html">Firewall Manager required permissions for API actions in the Firewall Manager Developer Guide.
    func putNotificationChannel(input: PutNotificationChannelInput) async throws -> PutNotificationChannelOutputResponse
    {
        typealias putNotificationChannelContinuation = CheckedContinuation<PutNotificationChannelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putNotificationChannelContinuation) in
            putNotificationChannel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Firewall Manager policy.
    ///          Firewall Manager provides the following types of policies:
    ///
    ///
    ///                An WAF policy (type WAFV2), which defines rule groups to run first in the
    ///               corresponding WAF web ACL and rule groups to run last in the web ACL.
    ///
    ///
    ///                An WAF Classic policy (type WAF), which defines a rule group.
    ///
    ///
    ///                A Shield Advanced policy, which applies Shield Advanced protection to specified
    ///           accounts and resources.
    ///
    ///
    ///                A security group policy, which manages VPC security groups across your Amazon Web Services
    ///           organization.
    ///
    ///
    ///                An Network Firewall policy, which provides firewall rules to filter network traffic in specified
    ///           Amazon VPCs.
    ///
    ///
    ///                A DNS Firewall policy, which provides Route 53 Resolver DNS Firewall rules to filter DNS queries for
    ///             specified VPCs.
    ///
    ///
    ///          Each policy is specific to one of the types. If you want to enforce more than one
    ///       policy type across accounts, create multiple policies. You can create multiple
    ///       policies for each type.
    ///          You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more
    ///         information about subscribing to Shield Advanced, see
    ///     <a href="https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html">CreateSubscription.
    func putPolicy(input: PutPolicyInput) async throws -> PutPolicyOutputResponse
    {
        typealias putPolicyContinuation = CheckedContinuation<PutPolicyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putPolicyContinuation) in
            putPolicy(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an Firewall Manager protocols list.
    func putProtocolsList(input: PutProtocolsListInput) async throws -> PutProtocolsListOutputResponse
    {
        typealias putProtocolsListContinuation = CheckedContinuation<PutProtocolsListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putProtocolsListContinuation) in
            putProtocolsList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more tags to an Amazon Web Services resource.
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

    /// Removes one or more tags from an Amazon Web Services resource.
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

}
#endif
