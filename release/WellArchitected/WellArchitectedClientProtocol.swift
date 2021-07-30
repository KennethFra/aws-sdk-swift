// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS Well-Architected Tool</fullname>
///
///          <p>This is the <i>AWS Well-Architected Tool API Reference</i>. The AWS Well-Architected Tool API provides programmatic access to the
///             <a href="http://aws.amazon.com/well-architected-tool">AWS Well-Architected Tool</a> in the
///             <a href="https://console.aws.amazon.com/wellarchitected">AWS Management Console</a>. For information
///             about the AWS Well-Architected Tool, see the
///             <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html">AWS Well-Architected Tool User Guide</a>.</p>
public protocol WellArchitectedClientProtocol {
    /// <p>Associate a lens to a workload.</p>
    func associateLenses(input: AssociateLensesInput, completion: @escaping (SdkResult<AssociateLensesOutputResponse, AssociateLensesOutputError>) -> Void)
    /// <p>Create a milestone for an existing workload.</p>
    func createMilestone(input: CreateMilestoneInput, completion: @escaping (SdkResult<CreateMilestoneOutputResponse, CreateMilestoneOutputError>) -> Void)
    /// <p>Create a new workload.</p>
    ///         <p>The owner of a workload can share the workload with other AWS accounts and IAM users
    ///             in the same AWS Region. Only the owner of a workload can delete it.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html">Defining a Workload</a> in the
    ///                 <i>AWS Well-Architected Tool User Guide</i>.</p>
    func createWorkload(input: CreateWorkloadInput, completion: @escaping (SdkResult<CreateWorkloadOutputResponse, CreateWorkloadOutputError>) -> Void)
    /// <p>Create a workload share.</p>
    ///         <p>The owner of a workload can share it with other AWS accounts and IAM users in the same
    ///             AWS Region. Shared access to a workload is not removed until the workload invitation is
    ///             deleted.</p>
    ///         <p>For more information, see <a href="https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html">Sharing a Workload</a> in the
    ///                 <i>AWS Well-Architected Tool User Guide</i>.</p>
    func createWorkloadShare(input: CreateWorkloadShareInput, completion: @escaping (SdkResult<CreateWorkloadShareOutputResponse, CreateWorkloadShareOutputError>) -> Void)
    /// <p>Delete an existing workload.</p>
    func deleteWorkload(input: DeleteWorkloadInput, completion: @escaping (SdkResult<DeleteWorkloadOutputResponse, DeleteWorkloadOutputError>) -> Void)
    /// <p>Delete a workload share.</p>
    func deleteWorkloadShare(input: DeleteWorkloadShareInput, completion: @escaping (SdkResult<DeleteWorkloadShareOutputResponse, DeleteWorkloadShareOutputError>) -> Void)
    /// <p>Disassociate a lens from a workload.</p>
    ///         <note>
    ///             <p>The AWS Well-Architected Framework lens (<code>wellarchitected</code>) cannot be
    ///                 removed from a workload.</p>
    ///         </note>
    func disassociateLenses(input: DisassociateLensesInput, completion: @escaping (SdkResult<DisassociateLensesOutputResponse, DisassociateLensesOutputError>) -> Void)
    /// <p>Get lens review.</p>
    func getAnswer(input: GetAnswerInput, completion: @escaping (SdkResult<GetAnswerOutputResponse, GetAnswerOutputError>) -> Void)
    /// <p>Get lens review.</p>
    func getLensReview(input: GetLensReviewInput, completion: @escaping (SdkResult<GetLensReviewOutputResponse, GetLensReviewOutputError>) -> Void)
    /// <p>Get lens review report.</p>
    func getLensReviewReport(input: GetLensReviewReportInput, completion: @escaping (SdkResult<GetLensReviewReportOutputResponse, GetLensReviewReportOutputError>) -> Void)
    /// <p>Get lens version differences.</p>
    func getLensVersionDifference(input: GetLensVersionDifferenceInput, completion: @escaping (SdkResult<GetLensVersionDifferenceOutputResponse, GetLensVersionDifferenceOutputError>) -> Void)
    /// <p>Get a milestone for an existing workload.</p>
    func getMilestone(input: GetMilestoneInput, completion: @escaping (SdkResult<GetMilestoneOutputResponse, GetMilestoneOutputError>) -> Void)
    /// <p>Get an existing workload.</p>
    func getWorkload(input: GetWorkloadInput, completion: @escaping (SdkResult<GetWorkloadOutputResponse, GetWorkloadOutputError>) -> Void)
    /// <p>List of answers.</p>
    func listAnswers(input: ListAnswersInput, completion: @escaping (SdkResult<ListAnswersOutputResponse, ListAnswersOutputError>) -> Void)
    /// <p>List the available lenses.</p>
    func listLenses(input: ListLensesInput, completion: @escaping (SdkResult<ListLensesOutputResponse, ListLensesOutputError>) -> Void)
    /// <p>List lens review improvements.</p>
    func listLensReviewImprovements(input: ListLensReviewImprovementsInput, completion: @escaping (SdkResult<ListLensReviewImprovementsOutputResponse, ListLensReviewImprovementsOutputError>) -> Void)
    /// <p>List lens reviews.</p>
    func listLensReviews(input: ListLensReviewsInput, completion: @escaping (SdkResult<ListLensReviewsOutputResponse, ListLensReviewsOutputError>) -> Void)
    /// <p>List all milestones for an existing workload.</p>
    func listMilestones(input: ListMilestonesInput, completion: @escaping (SdkResult<ListMilestonesOutputResponse, ListMilestonesOutputError>) -> Void)
    /// <p>List lens notifications.</p>
    func listNotifications(input: ListNotificationsInput, completion: @escaping (SdkResult<ListNotificationsOutputResponse, ListNotificationsOutputError>) -> Void)
    /// <p>List  the workload invitations.</p>
    func listShareInvitations(input: ListShareInvitationsInput, completion: @escaping (SdkResult<ListShareInvitationsOutputResponse, ListShareInvitationsOutputError>) -> Void)
    /// <p>List the tags for a resource.</p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>List workloads. Paginated.</p>
    func listWorkloads(input: ListWorkloadsInput, completion: @escaping (SdkResult<ListWorkloadsOutputResponse, ListWorkloadsOutputError>) -> Void)
    /// <p>List the workload shares associated with the workload.</p>
    func listWorkloadShares(input: ListWorkloadSharesInput, completion: @escaping (SdkResult<ListWorkloadSharesOutputResponse, ListWorkloadSharesOutputError>) -> Void)
    /// <p>Adds one or more tags to the specified resource.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Deletes specified tags from a resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Update the answer to a specific question in a workload review.</p>
    func updateAnswer(input: UpdateAnswerInput, completion: @escaping (SdkResult<UpdateAnswerOutputResponse, UpdateAnswerOutputError>) -> Void)
    /// <p>Update lens review.</p>
    func updateLensReview(input: UpdateLensReviewInput, completion: @escaping (SdkResult<UpdateLensReviewOutputResponse, UpdateLensReviewOutputError>) -> Void)
    /// <p>Update a workload invitation.</p>
    func updateShareInvitation(input: UpdateShareInvitationInput, completion: @escaping (SdkResult<UpdateShareInvitationOutputResponse, UpdateShareInvitationOutputError>) -> Void)
    /// <p>Update an existing workload.</p>
    func updateWorkload(input: UpdateWorkloadInput, completion: @escaping (SdkResult<UpdateWorkloadOutputResponse, UpdateWorkloadOutputError>) -> Void)
    /// <p>Update a workload share.</p>
    func updateWorkloadShare(input: UpdateWorkloadShareInput, completion: @escaping (SdkResult<UpdateWorkloadShareOutputResponse, UpdateWorkloadShareOutputError>) -> Void)
    /// <p>Upgrade lens review.</p>
    func upgradeLensReview(input: UpgradeLensReviewInput, completion: @escaping (SdkResult<UpgradeLensReviewOutputResponse, UpgradeLensReviewOutputError>) -> Void)
}
