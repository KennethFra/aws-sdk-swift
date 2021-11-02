// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the Amazon Lookout for Vision API Reference. It provides descriptions of actions, data types, common parameters, and common errors. Amazon Lookout for Vision enables you to find visual defects in industrial products, accurately and at scale. It uses computer vision to identify missing components in an industrial product, damage to vehicles or structures, irregularities in production lines, and even minuscule defects in silicon wafers — or any other physical item where quality is important such as a missing capacitor on printed circuit boards.
public protocol LookoutVisionClientProtocol {
    /// Creates a new dataset in an Amazon Lookout for Vision project. CreateDataset can create a training or a test dataset from a valid dataset source (DatasetSource). If you want a single dataset project, specify train for the value of DatasetType. To have a project with separate training and test datasets, call CreateDataset twice. On the first call, specify train for the value of DatasetType. On the second call, specify test for the value of DatasetType. This operation requires permissions to perform the lookoutvision:CreateDataset operation.
    func createDataset(input: CreateDatasetInput, completion: @escaping (ClientRuntime.SdkResult<CreateDatasetOutputResponse, CreateDatasetOutputError>) -> Void)
    /// Creates a new version of a model within an an Amazon Lookout for Vision project. CreateModel is an asynchronous operation in which Amazon Lookout for Vision trains, tests, and evaluates a new version of a model. To get the current status, check the Status field returned in the response from [DescribeModel]. If the project has a single dataset, Amazon Lookout for Vision internally splits the dataset to create a training and a test dataset. If the project has a training and a test dataset, Lookout for Vision uses the respective datasets to train and test the model. After training completes, the evaluation metrics are stored at the location specified in OutputConfig. This operation requires permissions to perform the lookoutvision:CreateModel operation. If you want to tag your model, you also require permission to the lookoutvision:TagResource operation.
    func createModel(input: CreateModelInput, completion: @escaping (ClientRuntime.SdkResult<CreateModelOutputResponse, CreateModelOutputError>) -> Void)
    /// Creates an empty Amazon Lookout for Vision project. After you create the project, add a dataset by calling [CreateDataset]. This operation requires permissions to perform the lookoutvision:CreateProject operation.
    func createProject(input: CreateProjectInput, completion: @escaping (ClientRuntime.SdkResult<CreateProjectOutputResponse, CreateProjectOutputError>) -> Void)
    /// Deletes an existing Amazon Lookout for Vision dataset. If your the project has a single dataset, you must create a new dataset before you can create a model. If you project has a training dataset and a test dataset consider the following.
    ///
    /// * If you delete the test dataset, your project reverts to a single dataset project. If you then train the model, Amazon Lookout for Vision internally splits the remaining dataset into a training and test dataset.
    ///
    /// * If you delete the training dataset, you must create a training dataset before you can create a model.
    ///
    ///
    /// This operation requires permissions to perform the lookoutvision:DeleteDataset operation.
    func deleteDataset(input: DeleteDatasetInput, completion: @escaping (ClientRuntime.SdkResult<DeleteDatasetOutputResponse, DeleteDatasetOutputError>) -> Void)
    /// Deletes an Amazon Lookout for Vision model. You can't delete a running model. To stop a running model, use the [StopModel] operation. It might take a few seconds to delete a model. To determine if a model has been deleted, call [ListProjects] and check if the version of the model (ModelVersion) is in the Models array. This operation requires permissions to perform the lookoutvision:DeleteModel operation.
    func deleteModel(input: DeleteModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteModelOutputResponse, DeleteModelOutputError>) -> Void)
    /// Deletes an Amazon Lookout for Vision project. To delete a project, you must first delete each version of the model associated with the project. To delete a model use the [DeleteModel] operation. You also have to delete the dataset(s) associated with the model. For more information, see [DeleteDataset]. The images referenced by the training and test datasets aren't deleted. This operation requires permissions to perform the lookoutvision:DeleteProject operation.
    func deleteProject(input: DeleteProjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteProjectOutputResponse, DeleteProjectOutputError>) -> Void)
    /// Describe an Amazon Lookout for Vision dataset. This operation requires permissions to perform the lookoutvision:DescribeDataset operation.
    func describeDataset(input: DescribeDatasetInput, completion: @escaping (ClientRuntime.SdkResult<DescribeDatasetOutputResponse, DescribeDatasetOutputError>) -> Void)
    /// Describes a version of an Amazon Lookout for Vision model. This operation requires permissions to perform the lookoutvision:DescribeModel operation.
    func describeModel(input: DescribeModelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeModelOutputResponse, DescribeModelOutputError>) -> Void)
    /// Describes an Amazon Lookout for Vision project. This operation requires permissions to perform the lookoutvision:DescribeProject operation.
    func describeProject(input: DescribeProjectInput, completion: @escaping (ClientRuntime.SdkResult<DescribeProjectOutputResponse, DescribeProjectOutputError>) -> Void)
    /// Detects anomalies in an image that you supply. The response from DetectAnomalies includes a boolean prediction that the image contains one or more anomalies and a confidence value for the prediction. Before calling DetectAnomalies, you must first start your model with the [StartModel] operation. You are charged for the amount of time, in minutes, that a model runs and for the number of anomaly detection units that your model uses. If you are not using a model, use the [StopModel] operation to stop your model. This operation requires permissions to perform the lookoutvision:DetectAnomalies operation.
    func detectAnomalies(input: DetectAnomaliesInput, completion: @escaping (ClientRuntime.SdkResult<DetectAnomaliesOutputResponse, DetectAnomaliesOutputError>) -> Void)
    /// Lists the JSON Lines within a dataset. An Amazon Lookout for Vision JSON Line contains the anomaly information for a single image, including the image location and the assigned label. This operation requires permissions to perform the lookoutvision:ListDatasetEntries operation.
    func listDatasetEntries(input: ListDatasetEntriesInput, completion: @escaping (ClientRuntime.SdkResult<ListDatasetEntriesOutputResponse, ListDatasetEntriesOutputError>) -> Void)
    /// Lists the versions of a model in an Amazon Lookout for Vision project. This operation requires permissions to perform the lookoutvision:ListModels operation.
    func listModels(input: ListModelsInput, completion: @escaping (ClientRuntime.SdkResult<ListModelsOutputResponse, ListModelsOutputError>) -> Void)
    /// Lists the Amazon Lookout for Vision projects in your AWS account. This operation requires permissions to perform the lookoutvision:ListProjects operation.
    func listProjects(input: ListProjectsInput, completion: @escaping (ClientRuntime.SdkResult<ListProjectsOutputResponse, ListProjectsOutputError>) -> Void)
    /// Returns a list of tags attached to the specified Amazon Lookout for Vision model. This operation requires permissions to perform the lookoutvision:ListTagsForResource operation.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Starts the running of the version of an Amazon Lookout for Vision model. Starting a model takes a while to complete. To check the current state of the model, use [DescribeModel]. A model is ready to use when its status is HOSTED. Once the model is running, you can detect custom labels in new images by calling [DetectAnomalies]. You are charged for the amount of time that the model is running. To stop a running model, call [StopModel]. This operation requires permissions to perform the lookoutvision:StartModel operation.
    func startModel(input: StartModelInput, completion: @escaping (ClientRuntime.SdkResult<StartModelOutputResponse, StartModelOutputError>) -> Void)
    /// Stops the hosting of a running model. The operation might take a while to complete. To check the current status, call [DescribeModel]. After the model hosting stops, the Status of the model is TRAINED. This operation requires permissions to perform the lookoutvision:StopModel operation.
    func stopModel(input: StopModelInput, completion: @escaping (ClientRuntime.SdkResult<StopModelOutputResponse, StopModelOutputError>) -> Void)
    /// Adds one or more key-value tags to an Amazon Lookout for Vision model. For more information, see Tagging a model in the Amazon Lookout for Vision Developer Guide. This operation requires permissions to perform the lookoutvision:TagResource operation.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes one or more tags from an Amazon Lookout for Vision model. For more information, see Tagging a model in the Amazon Lookout for Vision Developer Guide. This operation requires permissions to perform the lookoutvision:UntagResource operation.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Adds one or more JSON Line entries to a dataset. A JSON Line includes information about an image used for training or testing an Amazon Lookout for Vision model. The following is an example JSON Line. Updating a dataset might take a while to complete. To check the current status, call [DescribeDataset] and check the Status field in the response. This operation requires permissions to perform the lookoutvision:UpdateDatasetEntries operation.
    func updateDatasetEntries(input: UpdateDatasetEntriesInput, completion: @escaping (ClientRuntime.SdkResult<UpdateDatasetEntriesOutputResponse, UpdateDatasetEntriesOutputError>) -> Void)
}

public enum LookoutVisionClientTypes {}
