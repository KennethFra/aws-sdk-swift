// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Migration Hub Strategy Recommendations This API reference provides descriptions, syntax, and other details about each of the actions and data types for Migration Hub Strategy Recommendations (Strategy Recommendations). The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).
public protocol MigrationHubStrategyClientProtocol {
    /// Retrieves details about an application component.
    func getApplicationComponentDetails(input: GetApplicationComponentDetailsInput) async throws -> GetApplicationComponentDetailsOutputResponse
    /// Retrieves a list of all the recommended strategies and tools for an application component running on a server.
    func getApplicationComponentStrategies(input: GetApplicationComponentStrategiesInput) async throws -> GetApplicationComponentStrategiesOutputResponse
    /// Retrieves the status of an on-going assessment.
    func getAssessment(input: GetAssessmentInput) async throws -> GetAssessmentOutputResponse
    /// Retrieves the details about a specific import task.
    func getImportFileTask(input: GetImportFileTaskInput) async throws -> GetImportFileTaskOutputResponse
    /// Retrieves your migration and modernization preferences.
    func getPortfolioPreferences(input: GetPortfolioPreferencesInput) async throws -> GetPortfolioPreferencesOutputResponse
    /// Retrieves overall summary including the number of servers to rehost and the overall number of anti-patterns.
    func getPortfolioSummary(input: GetPortfolioSummaryInput) async throws -> GetPortfolioSummaryOutputResponse
    /// Retrieves detailed information about the specified recommendation report.
    func getRecommendationReportDetails(input: GetRecommendationReportDetailsInput) async throws -> GetRecommendationReportDetailsOutputResponse
    /// Retrieves detailed information about a specified server.
    func getServerDetails(input: GetServerDetailsInput) async throws -> GetServerDetailsOutputResponse
    /// Retrieves recommended strategies and tools for the specified server.
    func getServerStrategies(input: GetServerStrategiesInput) async throws -> GetServerStrategiesOutputResponse
    /// Retrieves a list of all the application components (processes).
    func listApplicationComponents(input: ListApplicationComponentsInput) async throws -> ListApplicationComponentsOutputResponse
    /// Retrieves a list of all the installed collectors.
    func listCollectors(input: ListCollectorsInput) async throws -> ListCollectorsOutputResponse
    /// Retrieves a list of all the imports performed.
    func listImportFileTask(input: ListImportFileTaskInput) async throws -> ListImportFileTaskOutputResponse
    /// Returns a list of all the servers.
    func listServers(input: ListServersInput) async throws -> ListServersOutputResponse
    /// Saves the specified migration and modernization preferences.
    func putPortfolioPreferences(input: PutPortfolioPreferencesInput) async throws -> PutPortfolioPreferencesOutputResponse
    /// Starts the assessment of an on-premises environment.
    func startAssessment(input: StartAssessmentInput) async throws -> StartAssessmentOutputResponse
    /// Starts a file import.
    func startImportFileTask(input: StartImportFileTaskInput) async throws -> StartImportFileTaskOutputResponse
    /// Starts generating a recommendation report.
    func startRecommendationReportGeneration(input: StartRecommendationReportGenerationInput) async throws -> StartRecommendationReportGenerationOutputResponse
    /// Stops the assessment of an on-premises environment.
    func stopAssessment(input: StopAssessmentInput) async throws -> StopAssessmentOutputResponse
    /// Updates the configuration of an application component.
    func updateApplicationComponentConfig(input: UpdateApplicationComponentConfigInput) async throws -> UpdateApplicationComponentConfigOutputResponse
    /// Updates the configuration of the specified server.
    func updateServerConfig(input: UpdateServerConfigInput) async throws -> UpdateServerConfigOutputResponse
}

public enum MigrationHubStrategyClientTypes {}
