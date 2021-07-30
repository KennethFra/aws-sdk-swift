// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS DataSync</fullname>
///
///          <p>AWS DataSync is a managed data transfer service that makes it simpler for you to
///       automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3)
///       or Amazon Elastic File System (Amazon EFS). </p>
///          <p>This API interface reference for AWS DataSync contains documentation for a
///       programming interface that you can use to manage AWS DataSync.</p>
public protocol DataSyncClientProtocol {
    /// <p>Cancels execution of a task. </p>
    ///          <p>When you cancel a task execution, the transfer of some files is abruptly interrupted.
    ///       The contents of files that are transferred to the destination might be incomplete or
    ///       inconsistent with the source files. However, if you start a new task execution on the same
    ///       task and you allow the task execution to complete, file content on the destination is complete
    ///       and consistent. This applies to other unexpected failures that interrupt a task execution. In
    ///       all of these cases, AWS DataSync successfully complete the transfer when you start the next
    ///       task execution.</p>
    func cancelTaskExecution(input: CancelTaskExecutionInput, completion: @escaping (SdkResult<CancelTaskExecutionOutputResponse, CancelTaskExecutionOutputError>) -> Void)
    /// <p>Activates an AWS DataSync agent that you have deployed on your host. The activation
    ///       process associates your agent with your account. In the activation process, you specify
    ///       information such as the AWS Region that you want to activate the agent in. You activate the
    ///       agent in the AWS Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your
    ///       tasks are created in this AWS Region.</p>
    ///          <p>You can activate the agent in a VPC (virtual private cloud) or provide the agent access to
    ///       a VPC endpoint so you can run tasks without going over the public internet.</p>
    ///          <p>You can use an agent for more than one location. If a task uses multiple agents, all of
    ///       them need to have status AVAILABLE for the task to run. If you use multiple agents for a
    ///       source location, the status of all the agents must be AVAILABLE for the task to run. </p>
    ///
    ///
    ///          <p>Agents are automatically updated by AWS on a regular basis, using a mechanism that
    ///       ensures minimal interruption to your tasks.</p>
    ///          <p></p>
    func createAgent(input: CreateAgentInput, completion: @escaping (SdkResult<CreateAgentOutputResponse, CreateAgentOutputError>) -> Void)
    /// <p>Creates an endpoint for an Amazon EFS file system.</p>
    func createLocationEfs(input: CreateLocationEfsInput, completion: @escaping (SdkResult<CreateLocationEfsOutputResponse, CreateLocationEfsOutputError>) -> Void)
    /// <p>Creates an endpoint for an Amazon FSx for Windows File Server file system.</p>
    func createLocationFsxWindows(input: CreateLocationFsxWindowsInput, completion: @escaping (SdkResult<CreateLocationFsxWindowsOutputResponse, CreateLocationFsxWindowsOutputError>) -> Void)
    /// <p>Defines a file system on a Network File System (NFS) server that can be read from or
    ///       written to.</p>
    func createLocationNfs(input: CreateLocationNfsInput, completion: @escaping (SdkResult<CreateLocationNfsOutputResponse, CreateLocationNfsOutputError>) -> Void)
    /// <p>Creates an endpoint for a self-managed object storage bucket. For more information
    ///       about self-managed object storage locations, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Creating a location for object storage</a>.</p>
    func createLocationObjectStorage(input: CreateLocationObjectStorageInput, completion: @escaping (SdkResult<CreateLocationObjectStorageOutputResponse, CreateLocationObjectStorageOutputError>) -> Void)
    /// <p>Creates an endpoint for an Amazon S3 bucket.</p>
    ///
    ///
    ///          <p>For
    ///       more information, see
    ///       https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli
    ///       in the <i>AWS DataSync User Guide</i>.</p>
    func createLocationS3(input: CreateLocationS3Input, completion: @escaping (SdkResult<CreateLocationS3OutputResponse, CreateLocationS3OutputError>) -> Void)
    /// <p>Defines a file system on a Server Message Block (SMB) server that can be read from or
    ///       written to.</p>
    func createLocationSmb(input: CreateLocationSmbInput, completion: @escaping (SdkResult<CreateLocationSmbOutputResponse, CreateLocationSmbOutputError>) -> Void)
    /// <p>Creates a task.</p>
    ///          <p>A task includes a source location and a destination location, and a configuration
    ///       that specifies how data is transferred. A task always transfers data from the source
    ///       location to the destination location. The configuration specifies options such as
    ///       task scheduling, bandwidth limits, etc. A task is the complete definition of a data
    ///       transfer.</p>
    ///          <p>When you create a task that transfers data between AWS services in different AWS Regions,
    ///       one of the two locations that you specify must reside in the Region where DataSync is being
    ///       used. The other location must be specified in a different Region.</p>
    ///          <p>You can transfer data between commercial AWS Regions except for China, or between AWS
    ///       GovCloud (US-East and US-West) Regions.</p>
    ///
    ///          <important>
    ///             <p>When you use DataSync to copy files or objects between AWS Regions,
    ///       you pay for data transfer between Regions. This is billed as data transfer OUT
    ///       from your source Region to your destination Region. For more information,
    ///       see <a href="http://aws.amazon.com/ec2/pricing/on-demand/#Data_Transfer">Data Transfer pricing</a>.
    ///     </p>
    ///          </important>
    func createTask(input: CreateTaskInput, completion: @escaping (SdkResult<CreateTaskOutputResponse, CreateTaskOutputError>) -> Void)
    /// <p>Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN)
    ///       of the agent in your request. The operation disassociates the agent from your AWS account.
    ///       However, it doesn't delete the agent virtual machine (VM) from your on-premises
    ///       environment.</p>
    func deleteAgent(input: DeleteAgentInput, completion: @escaping (SdkResult<DeleteAgentOutputResponse, DeleteAgentOutputError>) -> Void)
    /// <p>Deletes the configuration of a location used by AWS DataSync. </p>
    func deleteLocation(input: DeleteLocationInput, completion: @escaping (SdkResult<DeleteLocationOutputResponse, DeleteLocationOutputError>) -> Void)
    /// <p>Deletes a task.</p>
    func deleteTask(input: DeleteTaskInput, completion: @escaping (SdkResult<DeleteTaskOutputResponse, DeleteTaskOutputError>) -> Void)
    /// <p>Returns metadata such as the name, the network interfaces, and the status (that is,
    ///       whether the agent is running or not) for an agent. To specify which agent to describe, use the
    ///       Amazon Resource Name (ARN) of the agent in your request. </p>
    func describeAgent(input: DescribeAgentInput, completion: @escaping (SdkResult<DescribeAgentOutputResponse, DescribeAgentOutputError>) -> Void)
    /// <p>Returns metadata, such as the path information about an Amazon EFS location.</p>
    func describeLocationEfs(input: DescribeLocationEfsInput, completion: @escaping (SdkResult<DescribeLocationEfsOutputResponse, DescribeLocationEfsOutputError>) -> Void)
    /// <p>Returns metadata, such as the path information about an Amazon FSx for Windows File Server
    ///       location.</p>
    func describeLocationFsxWindows(input: DescribeLocationFsxWindowsInput, completion: @escaping (SdkResult<DescribeLocationFsxWindowsOutputResponse, DescribeLocationFsxWindowsOutputError>) -> Void)
    /// <p>Returns metadata, such as the path information, about an NFS location.</p>
    func describeLocationNfs(input: DescribeLocationNfsInput, completion: @escaping (SdkResult<DescribeLocationNfsOutputResponse, DescribeLocationNfsOutputError>) -> Void)
    /// <p>Returns metadata about a self-managed object storage server location. For more information
    ///       about self-managed object storage locations, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Creating a location for object storage</a>.</p>
    func describeLocationObjectStorage(input: DescribeLocationObjectStorageInput, completion: @escaping (SdkResult<DescribeLocationObjectStorageOutputResponse, DescribeLocationObjectStorageOutputError>) -> Void)
    /// <p>Returns metadata, such as bucket name, about an Amazon S3 bucket location.</p>
    func describeLocationS3(input: DescribeLocationS3Input, completion: @escaping (SdkResult<DescribeLocationS3OutputResponse, DescribeLocationS3OutputError>) -> Void)
    /// <p>Returns metadata, such as the path and user information about an SMB location.</p>
    func describeLocationSmb(input: DescribeLocationSmbInput, completion: @escaping (SdkResult<DescribeLocationSmbOutputResponse, DescribeLocationSmbOutputError>) -> Void)
    /// <p>Returns metadata about a task.</p>
    func describeTask(input: DescribeTaskInput, completion: @escaping (SdkResult<DescribeTaskOutputResponse, DescribeTaskOutputError>) -> Void)
    /// <p>Returns detailed metadata about a task that is being executed.</p>
    func describeTaskExecution(input: DescribeTaskExecutionInput, completion: @escaping (SdkResult<DescribeTaskExecutionOutputResponse, DescribeTaskExecutionOutputError>) -> Void)
    /// <p>Returns a list of agents owned by an AWS account in the AWS Region specified in the
    ///       request. The returned list is ordered by agent Amazon Resource Name (ARN).</p>
    ///          <p>By default, this operation returns a maximum of 100 agents. This operation supports
    ///       pagination that enables you to optionally reduce the number of agents returned in a
    ///       response.</p>
    ///          <p>If you have more agents than are returned in a response (that is, the response returns
    ///       only a truncated list of your agents), the response contains a marker that you can specify in
    ///       your next request to fetch the next page of agents.</p>
    func listAgents(input: ListAgentsInput, completion: @escaping (SdkResult<ListAgentsOutputResponse, ListAgentsOutputError>) -> Void)
    /// <p>Returns a list of source and destination locations.</p>
    ///          <p>If you have more locations than are returned in a response (that is, the response
    ///       returns only a truncated list of your agents), the response contains a token that you can
    ///       specify in your next request to fetch the next page of locations.</p>
    func listLocations(input: ListLocationsInput, completion: @escaping (SdkResult<ListLocationsOutputResponse, ListLocationsOutputError>) -> Void)
    /// <p>Returns all the tags associated with a specified resource. </p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Returns a list of executed tasks.</p>
    func listTaskExecutions(input: ListTaskExecutionsInput, completion: @escaping (SdkResult<ListTaskExecutionsOutputResponse, ListTaskExecutionsOutputError>) -> Void)
    /// <p>Returns a list of all the tasks.</p>
    func listTasks(input: ListTasksInput, completion: @escaping (SdkResult<ListTasksOutputResponse, ListTasksOutputError>) -> Void)
    /// <p>Starts a specific invocation of a task. A <code>TaskExecution</code> value represents
    ///       an individual run of a task. Each task can have at most one <code>TaskExecution</code> at a
    ///       time.</p>
    ///          <p>
    ///             <code>TaskExecution</code> has the following transition phases: INITIALIZING |
    ///       PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE. </p>
    ///
    ///          <p>For detailed information, see the Task Execution section in the Components and
    ///       Terminology topic in the <i>AWS DataSync User Guide</i>.</p>
    func startTaskExecution(input: StartTaskExecutionInput, completion: @escaping (SdkResult<StartTaskExecutionOutputResponse, StartTaskExecutionOutputError>) -> Void)
    /// <p>Applies a key-value pair to an AWS resource.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes a tag from an AWS resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates the name of an agent.</p>
    func updateAgent(input: UpdateAgentInput, completion: @escaping (SdkResult<UpdateAgentOutputResponse, UpdateAgentOutputError>) -> Void)
    /// <p>Updates some of the parameters of a previously created location for Network File System (NFS) access.
    ///       For information about creating an NFS location, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html">Creating a location for NFS</a>.</p>
    func updateLocationNfs(input: UpdateLocationNfsInput, completion: @escaping (SdkResult<UpdateLocationNfsOutputResponse, UpdateLocationNfsOutputError>) -> Void)
    /// <p>Updates some of the parameters of a previously created location for self-managed object
    ///       storage server access. For information about creating a self-managed object storage location,
    ///       see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Creating a location for object storage</a>.</p>
    func updateLocationObjectStorage(input: UpdateLocationObjectStorageInput, completion: @escaping (SdkResult<UpdateLocationObjectStorageOutputResponse, UpdateLocationObjectStorageOutputError>) -> Void)
    /// <p>Updates some of the parameters of a previously created location for Server Message Block
    ///       (SMB) file system access. For information about creating an SMB location, see
    ///       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html">Creating a location for SMB</a>.</p>
    func updateLocationSmb(input: UpdateLocationSmbInput, completion: @escaping (SdkResult<UpdateLocationSmbOutputResponse, UpdateLocationSmbOutputError>) -> Void)
    /// <p>Updates the metadata associated with a task.</p>
    func updateTask(input: UpdateTaskInput, completion: @escaping (SdkResult<UpdateTaskOutputResponse, UpdateTaskOutputError>) -> Void)
    /// <p>Updates execution of a task.</p>
    ///          <p>You can modify bandwidth throttling for a task execution that is running or queued.
    ///       For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling">Adjusting Bandwidth Throttling for a Task Execution</a>.</p>
    ///
    ///          <note>
    ///             <p>The only <code>Option</code> that can be modified by <code>UpdateTaskExecution</code>
    ///         is <code>
    ///                   <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond">BytesPerSecond</a>
    ///                </code>.</p>
    ///          </note>
    func updateTaskExecution(input: UpdateTaskExecutionInput, completion: @escaping (SdkResult<UpdateTaskExecutionOutputResponse, UpdateTaskExecutionOutputError>) -> Void)
}
