// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon HealthLake is a HIPAA eligibile service that allows customers to store, transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.
public protocol HealthLakeClientProtocol {
    /// Creates a Data Store that can ingest and export FHIR formatted data.
    func createFHIRDatastore(input: CreateFHIRDatastoreInput) async throws -> CreateFHIRDatastoreOutputResponse
    /// Deletes a Data Store.
    func deleteFHIRDatastore(input: DeleteFHIRDatastoreInput) async throws -> DeleteFHIRDatastoreOutputResponse
    /// Gets the properties associated with the FHIR Data Store, including the Data Store ID, Data Store ARN, Data Store name, Data Store status, created at, Data Store type version, and Data Store endpoint.
    func describeFHIRDatastore(input: DescribeFHIRDatastoreInput) async throws -> DescribeFHIRDatastoreOutputResponse
    /// Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job.
    func describeFHIRExportJob(input: DescribeFHIRExportJobInput) async throws -> DescribeFHIRExportJobOutputResponse
    /// Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job.
    func describeFHIRImportJob(input: DescribeFHIRImportJobInput) async throws -> DescribeFHIRImportJobOutputResponse
    /// Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status.
    func listFHIRDatastores(input: ListFHIRDatastoresInput) async throws -> ListFHIRDatastoresOutputResponse
    /// Lists all FHIR export jobs associated with an account and their statuses.
    func listFHIRExportJobs(input: ListFHIRExportJobsInput) async throws -> ListFHIRExportJobsOutputResponse
    /// Lists all FHIR import jobs associated with an account and their statuses.
    func listFHIRImportJobs(input: ListFHIRImportJobsInput) async throws -> ListFHIRImportJobsOutputResponse
    /// Returns a list of all existing tags associated with a Data Store.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Begins a FHIR export job.
    func startFHIRExportJob(input: StartFHIRExportJobInput) async throws -> StartFHIRExportJobOutputResponse
    /// Begins a FHIR Import job.
    func startFHIRImportJob(input: StartFHIRImportJobInput) async throws -> StartFHIRImportJobOutputResponse
    /// Adds a user specifed key and value tag to a Data Store.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from a Data Store.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public enum HealthLakeClientTypes {}
