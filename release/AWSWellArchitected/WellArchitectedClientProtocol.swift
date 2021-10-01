// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS Well-Architected Tool</fullname>
///
///          This is the AWS Well-Architected Tool API Reference. The AWS Well-Architected Tool API provides programmatic access to the
///             <a href="http://aws.amazon.com/well-architected-tool">AWS Well-Architected Tool in the
///             <a href="https://console.aws.amazon.com/wellarchitected">AWS Management Console. For information
///             about the AWS Well-Architected Tool, see the
///             <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html">AWS Well-Architected Tool User Guide.
public protocol WellArchitectedClientProtocol {
    /// Associate a lens to a workload.
    func associateLenses(input: AssociateLensesInput, completion: @escaping (ClientRuntime.SdkResult<AssociateLensesOutputResponse, AssociateLensesOutputError>) -> Void)
    /// Create a milestone for an existing workload.
    func createMilestone(input: CreateMilestoneInput, completion: @escaping (ClientRuntime.SdkResult<CreateMilestoneOutputResponse, CreateMilestoneOutputError>) -> Void)
    /// Create a new workload.
    ///         The owner of a workload can share the workload with other AWS accounts and IAM users
    ///             in the same AWS Region. Only the owner of a workload can delete it.
    ///         For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html">Defining a Workload in the
    ///                 AWS Well-Architected Tool User Guide.
    func createWorkload(input: CreateWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<CreateWorkloadOutputResponse, CreateWorkloadOutputError>) -> Void)
    /// Create a workload share.
    ///         The owner of a workload can share it with other AWS accounts and IAM users in the same
    ///             AWS Region. Shared access to a workload is not removed until the workload invitation is
    ///             deleted.
    ///         For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html">Sharing a Workload in the
    ///                 AWS Well-Architected Tool User Guide.
    func createWorkloadShare(input: CreateWorkloadShareInput, completion: @escaping (ClientRuntime.SdkResult<CreateWorkloadShareOutputResponse, CreateWorkloadShareOutputError>) -> Void)
    /// Delete an existing workload.
    func deleteWorkload(input: DeleteWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<DeleteWorkloadOutputResponse, DeleteWorkloadOutputError>) -> Void)
    /// Delete a workload share.
    func deleteWorkloadShare(input: DeleteWorkloadShareInput, completion: @escaping (ClientRuntime.SdkResult<DeleteWorkloadShareOutputResponse, DeleteWorkloadShareOutputError>) -> Void)
    /// Disassociate a lens from a workload.
    ///
    ///             The AWS Well-Architected Framework lens (wellarchitected) cannot be
    ///                 removed from a workload.
    ///
    func disassociateLenses(input: DisassociateLensesInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateLensesOutputResponse, DisassociateLensesOutputError>) -> Void)
    /// Get the answer to a specific question in a workload review.
    func getAnswer(input: GetAnswerInput, completion: @escaping (ClientRuntime.SdkResult<GetAnswerOutputResponse, GetAnswerOutputError>) -> Void)
    /// Get lens review.
    func getLensReview(input: GetLensReviewInput, completion: @escaping (ClientRuntime.SdkResult<GetLensReviewOutputResponse, GetLensReviewOutputError>) -> Void)
    /// Get lens review report.
    func getLensReviewReport(input: GetLensReviewReportInput, completion: @escaping (ClientRuntime.SdkResult<GetLensReviewReportOutputResponse, GetLensReviewReportOutputError>) -> Void)
    /// Get lens version differences.
    func getLensVersionDifference(input: GetLensVersionDifferenceInput, completion: @escaping (ClientRuntime.SdkResult<GetLensVersionDifferenceOutputResponse, GetLensVersionDifferenceOutputError>) -> Void)
    /// Get a milestone for an existing workload.
    func getMilestone(input: GetMilestoneInput, completion: @escaping (ClientRuntime.SdkResult<GetMilestoneOutputResponse, GetMilestoneOutputError>) -> Void)
    /// Get an existing workload.
    func getWorkload(input: GetWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<GetWorkloadOutputResponse, GetWorkloadOutputError>) -> Void)
    /// List of answers.
    func listAnswers(input: ListAnswersInput, completion: @escaping (ClientRuntime.SdkResult<ListAnswersOutputResponse, ListAnswersOutputError>) -> Void)
    /// List the available lenses.
    func listLenses(input: ListLensesInput, completion: @escaping (ClientRuntime.SdkResult<ListLensesOutputResponse, ListLensesOutputError>) -> Void)
    /// List lens review improvements.
    func listLensReviewImprovements(input: ListLensReviewImprovementsInput, completion: @escaping (ClientRuntime.SdkResult<ListLensReviewImprovementsOutputResponse, ListLensReviewImprovementsOutputError>) -> Void)
    /// List lens reviews.
    func listLensReviews(input: ListLensReviewsInput, completion: @escaping (ClientRuntime.SdkResult<ListLensReviewsOutputResponse, ListLensReviewsOutputError>) -> Void)
    /// List all milestones for an existing workload.
    func listMilestones(input: ListMilestonesInput, completion: @escaping (ClientRuntime.SdkResult<ListMilestonesOutputResponse, ListMilestonesOutputError>) -> Void)
    /// List lens notifications.
    func listNotifications(input: ListNotificationsInput, completion: @escaping (ClientRuntime.SdkResult<ListNotificationsOutputResponse, ListNotificationsOutputError>) -> Void)
    /// List  the workload invitations.
    func listShareInvitations(input: ListShareInvitationsInput, completion: @escaping (ClientRuntime.SdkResult<ListShareInvitationsOutputResponse, ListShareInvitationsOutputError>) -> Void)
    /// List the tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// List workloads. Paginated.
    func listWorkloads(input: ListWorkloadsInput, completion: @escaping (ClientRuntime.SdkResult<ListWorkloadsOutputResponse, ListWorkloadsOutputError>) -> Void)
    /// List the workload shares associated with the workload.
    func listWorkloadShares(input: ListWorkloadSharesInput, completion: @escaping (ClientRuntime.SdkResult<ListWorkloadSharesOutputResponse, ListWorkloadSharesOutputError>) -> Void)
    /// Adds one or more tags to the specified resource.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Deletes specified tags from a resource.
    ///         To specify multiple tags, use separate tagKeys parameters, for example:
    ///
    ///             DELETE /tags/WorkloadArn?tagKeys=key1&tagKeys=key2
    ///
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Update the answer to a specific question in a workload review.
    func updateAnswer(input: UpdateAnswerInput, completion: @escaping (ClientRuntime.SdkResult<UpdateAnswerOutputResponse, UpdateAnswerOutputError>) -> Void)
    /// Update lens review.
    func updateLensReview(input: UpdateLensReviewInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLensReviewOutputResponse, UpdateLensReviewOutputError>) -> Void)
    /// Update a workload invitation.
    func updateShareInvitation(input: UpdateShareInvitationInput, completion: @escaping (ClientRuntime.SdkResult<UpdateShareInvitationOutputResponse, UpdateShareInvitationOutputError>) -> Void)
    /// Update an existing workload.
    func updateWorkload(input: UpdateWorkloadInput, completion: @escaping (ClientRuntime.SdkResult<UpdateWorkloadOutputResponse, UpdateWorkloadOutputError>) -> Void)
    /// Update a workload share.
    func updateWorkloadShare(input: UpdateWorkloadShareInput, completion: @escaping (ClientRuntime.SdkResult<UpdateWorkloadShareOutputResponse, UpdateWorkloadShareOutputError>) -> Void)
    /// Upgrade lens review.
    func upgradeLensReview(input: UpgradeLensReviewInput, completion: @escaping (ClientRuntime.SdkResult<UpgradeLensReviewOutputResponse, UpgradeLensReviewOutputError>) -> Void)
}

public enum WellArchitectedClientTypes {}
