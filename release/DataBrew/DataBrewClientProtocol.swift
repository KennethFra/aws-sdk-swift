// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>AWS Glue DataBrew is a visual, cloud-scale data-preparation service. DataBrew
///             simplifies data preparation tasks, targeting data issues that are hard to spot and
///             time-consuming to fix. DataBrew empowers users of all technical levels to visualize the
///             data and perform one-click data transformations, with no coding required.</p>
public protocol DataBrewClientProtocol {
    /// <p>Deletes one or more versions of a recipe at a time.</p>
    ///
    ///         <p>The entire request will be rejected if:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>The recipe does not exist.</p>
    ///             </li>
    ///             <li>
    ///                 <p>There is an invalid version identifier in the list of versions.</p>
    ///             </li>
    ///             <li>
    ///                 <p>The version list is empty.</p>
    ///             </li>
    ///             <li>
    ///                 <p>The version list size exceeds 50.</p>
    ///             </li>
    ///             <li>
    ///                 <p>The version list contains duplicate entries.</p>
    ///             </li>
    ///          </ul>
    ///
    ///         <p>The request will complete successfully, but with partial failures, if:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>A version does not exist.</p>
    ///             </li>
    ///             <li>
    ///                 <p>A version is being used by a job.</p>
    ///             </li>
    ///             <li>
    ///                 <p>You specify <code>LATEST_WORKING</code>, but it's being used by a
    ///                     project.</p>
    ///             </li>
    ///             <li>
    ///                 <p>The version fails to be deleted.</p>
    ///             </li>
    ///          </ul>
    ///         <p>The <code>LATEST_WORKING</code> version will only be deleted if the recipe has no
    ///             other versions. If you try to delete <code>LATEST_WORKING</code> while other versions
    ///             exist (or if they can't be deleted), then <code>LATEST_WORKING</code> will be listed as
    ///             partial failure in the response.</p>
    func batchDeleteRecipeVersion(input: BatchDeleteRecipeVersionInput, completion: @escaping (SdkResult<BatchDeleteRecipeVersionOutputResponse, BatchDeleteRecipeVersionOutputError>) -> Void)
    /// <p>Creates a new DataBrew dataset.</p>
    func createDataset(input: CreateDatasetInput, completion: @escaping (SdkResult<CreateDatasetOutputResponse, CreateDatasetOutputError>) -> Void)
    /// <p>Creates a new job to analyze a dataset and create its data profile.</p>
    func createProfileJob(input: CreateProfileJobInput, completion: @escaping (SdkResult<CreateProfileJobOutputResponse, CreateProfileJobOutputError>) -> Void)
    /// <p>Creates a new DataBrew project.</p>
    func createProject(input: CreateProjectInput, completion: @escaping (SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
    /// <p>Creates a new DataBrew recipe.</p>
    func createRecipe(input: CreateRecipeInput, completion: @escaping (SdkResult<CreateRecipeOutputResponse, CreateRecipeOutputError>) -> Void)
    /// <p>Creates a new job to transform input data, using steps defined in an existing AWS Glue
    ///             DataBrew recipe</p>
    func createRecipeJob(input: CreateRecipeJobInput, completion: @escaping (SdkResult<CreateRecipeJobOutputResponse, CreateRecipeJobOutputError>) -> Void)
    /// <p>Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific
    ///             date and time, or at regular intervals.</p>
    func createSchedule(input: CreateScheduleInput, completion: @escaping (SdkResult<CreateScheduleOutputResponse, CreateScheduleOutputError>) -> Void)
    /// <p>Deletes a dataset from DataBrew.</p>
    func deleteDataset(input: DeleteDatasetInput, completion: @escaping (SdkResult<DeleteDatasetOutputResponse, DeleteDatasetOutputError>) -> Void)
    /// <p>Deletes the specified DataBrew job.</p>
    func deleteJob(input: DeleteJobInput, completion: @escaping (SdkResult<DeleteJobOutputResponse, DeleteJobOutputError>) -> Void)
    /// <p>Deletes an existing DataBrew project.</p>
    func deleteProject(input: DeleteProjectInput, completion: @escaping (SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
    /// <p>Deletes a single version of a DataBrew recipe.</p>
    func deleteRecipeVersion(input: DeleteRecipeVersionInput, completion: @escaping (SdkResult<DeleteRecipeVersionOutputResponse, DeleteRecipeVersionOutputError>) -> Void)
    /// <p>Deletes the specified DataBrew schedule.</p>
    func deleteSchedule(input: DeleteScheduleInput, completion: @escaping (SdkResult<DeleteScheduleOutputResponse, DeleteScheduleOutputError>) -> Void)
    /// <p>Returns the definition of a specific DataBrew dataset.</p>
    func describeDataset(input: DescribeDatasetInput, completion: @escaping (SdkResult<DescribeDatasetOutputResponse, DescribeDatasetOutputError>) -> Void)
    /// <p>Returns the definition of a specific DataBrew job.</p>
    func describeJob(input: DescribeJobInput, completion: @escaping (SdkResult<DescribeJobOutputResponse, DescribeJobOutputError>) -> Void)
    /// <p>Represents one run of a DataBrew job.</p>
    func describeJobRun(input: DescribeJobRunInput, completion: @escaping (SdkResult<DescribeJobRunOutputResponse, DescribeJobRunOutputError>) -> Void)
    /// <p>Returns the definition of a specific DataBrew project.</p>
    func describeProject(input: DescribeProjectInput, completion: @escaping (SdkResult<DescribeProjectOutputResponse, DescribeProjectOutputError>) -> Void)
    /// <p>Returns the definition of a specific DataBrew recipe corresponding to a particular
    ///             version.</p>
    func describeRecipe(input: DescribeRecipeInput, completion: @escaping (SdkResult<DescribeRecipeOutputResponse, DescribeRecipeOutputError>) -> Void)
    /// <p>Returns the definition of a specific DataBrew schedule.</p>
    func describeSchedule(input: DescribeScheduleInput, completion: @escaping (SdkResult<DescribeScheduleOutputResponse, DescribeScheduleOutputError>) -> Void)
    /// <p>Lists all of the DataBrew datasets.</p>
    func listDatasets(input: ListDatasetsInput, completion: @escaping (SdkResult<ListDatasetsOutputResponse, ListDatasetsOutputError>) -> Void)
    /// <p>Lists all of the previous runs of a particular DataBrew job.</p>
    func listJobRuns(input: ListJobRunsInput, completion: @escaping (SdkResult<ListJobRunsOutputResponse, ListJobRunsOutputError>) -> Void)
    /// <p>Lists all of the DataBrew jobs that are defined.</p>
    func listJobs(input: ListJobsInput, completion: @escaping (SdkResult<ListJobsOutputResponse, ListJobsOutputError>) -> Void)
    /// <p>Lists all of the DataBrew projects that are defined.</p>
    func listProjects(input: ListProjectsInput, completion: @escaping (SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
    /// <p>Lists all of the DataBrew recipes that are defined.</p>
    func listRecipes(input: ListRecipesInput, completion: @escaping (SdkResult<ListRecipesOutputResponse, ListRecipesOutputError>) -> Void)
    /// <p>Lists the versions of a particular DataBrew recipe, except for
    ///                 <code>LATEST_WORKING</code>.</p>
    func listRecipeVersions(input: ListRecipeVersionsInput, completion: @escaping (SdkResult<ListRecipeVersionsOutputResponse, ListRecipeVersionsOutputError>) -> Void)
    /// <p>Lists the DataBrew schedules that are defined.</p>
    func listSchedules(input: ListSchedulesInput, completion: @escaping (SdkResult<ListSchedulesOutputResponse, ListSchedulesOutputError>) -> Void)
    /// <p>Lists all the tags for a DataBrew resource. </p>
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// <p>Publishes a new version of a DataBrew recipe.</p>
    func publishRecipe(input: PublishRecipeInput, completion: @escaping (SdkResult<PublishRecipeOutputResponse, PublishRecipeOutputError>) -> Void)
    /// <p>Performs a recipe step within an interactive DataBrew session that's currently
    ///             open.</p>
    func sendProjectSessionAction(input: SendProjectSessionActionInput, completion: @escaping (SdkResult<SendProjectSessionActionOutputResponse, SendProjectSessionActionOutputError>) -> Void)
    /// <p>Runs a DataBrew job.</p>
    func startJobRun(input: StartJobRunInput, completion: @escaping (SdkResult<StartJobRunOutputResponse, StartJobRunOutputError>) -> Void)
    /// <p>Creates an interactive session, enabling you to manipulate data in a DataBrew
    ///             project.</p>
    func startProjectSession(input: StartProjectSessionInput, completion: @escaping (SdkResult<StartProjectSessionOutputResponse, StartProjectSessionOutputError>) -> Void)
    /// <p>Stops a particular run of a job.</p>
    func stopJobRun(input: StopJobRunInput, completion: @escaping (SdkResult<StopJobRunOutputResponse, StopJobRunOutputError>) -> Void)
    /// <p>Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or
    ///             schedule.</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes metadata tags from a DataBrew resource.</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Modifies the definition of an existing DataBrew dataset.</p>
    func updateDataset(input: UpdateDatasetInput, completion: @escaping (SdkResult<UpdateDatasetOutputResponse, UpdateDatasetOutputError>) -> Void)
    /// <p>Modifies the definition of an existing profile job.</p>
    func updateProfileJob(input: UpdateProfileJobInput, completion: @escaping (SdkResult<UpdateProfileJobOutputResponse, UpdateProfileJobOutputError>) -> Void)
    /// <p>Modifies the definition of an existing DataBrew project.</p>
    func updateProject(input: UpdateProjectInput, completion: @escaping (SdkResult<UpdateProjectOutputResponse, UpdateProjectOutputError>) -> Void)
    /// <p>Modifies the definition of the <code>LATEST_WORKING</code> version of a DataBrew
    ///             recipe.</p>
    func updateRecipe(input: UpdateRecipeInput, completion: @escaping (SdkResult<UpdateRecipeOutputResponse, UpdateRecipeOutputError>) -> Void)
    /// <p>Modifies the definition of an existing DataBrew recipe job.</p>
    func updateRecipeJob(input: UpdateRecipeJobInput, completion: @escaping (SdkResult<UpdateRecipeJobOutputResponse, UpdateRecipeJobOutputError>) -> Void)
    /// <p>Modifies the definition of an existing DataBrew schedule.</p>
    func updateSchedule(input: UpdateScheduleInput, completion: @escaping (SdkResult<UpdateScheduleOutputResponse, UpdateScheduleOutputError>) -> Void)
}
