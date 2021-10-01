// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MacieClient {
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Macie"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AWSClientRuntime.AWSClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String? = nil) throws {
        let config = try MacieClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class MacieClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpointResolver: AWSClientRuntime.EndpointResolver
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.regionResolver = regionResolver ?? DefaultRegionResolver()
            let defaultRegion = self.regionResolver.resolveRegion()
            self.region = region ?? defaultRegion
            self.signingRegion = signingRegion ?? defaultRegion
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MacieClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct MacieClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MacieClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MacieClient: MacieClientProtocol {
    /// Associates a specified AWS account with Amazon Macie Classic as a member
    ///       account.
    public func associateMemberAccount(input: AssociateMemberAccountInput, completion: @escaping (ClientRuntime.SdkResult<AssociateMemberAccountOutputResponse, AssociateMemberAccountOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "associateMemberAccount")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<AssociateMemberAccountInput, AssociateMemberAccountOutputResponse, AssociateMemberAccountOutputError>(id: "associateMemberAccount")
        operation.initializeStep.intercept(position: .after, middleware: AssociateMemberAccountInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: AssociateMemberAccountInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: AssociateMemberAccountInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<AssociateMemberAccountInput, AssociateMemberAccountOutputResponse, AssociateMemberAccountOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: AssociateMemberAccountInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<AssociateMemberAccountInput, AssociateMemberAccountOutputResponse, AssociateMemberAccountOutputError>(xAmzTarget: "MacieService.AssociateMemberAccount"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Associates specified S3 resources with Amazon Macie Classic for monitoring and data
    ///       classification. If memberAccountId isn't specified, the action associates specified S3
    ///       resources with Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified,
    ///       the action associates specified S3 resources with Macie Classic for the specified member
    ///       account.
    public func associateS3Resources(input: AssociateS3ResourcesInput, completion: @escaping (ClientRuntime.SdkResult<AssociateS3ResourcesOutputResponse, AssociateS3ResourcesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "associateS3Resources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<AssociateS3ResourcesInput, AssociateS3ResourcesOutputResponse, AssociateS3ResourcesOutputError>(id: "associateS3Resources")
        operation.initializeStep.intercept(position: .after, middleware: AssociateS3ResourcesInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: AssociateS3ResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: AssociateS3ResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<AssociateS3ResourcesInput, AssociateS3ResourcesOutputResponse, AssociateS3ResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: AssociateS3ResourcesInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<AssociateS3ResourcesInput, AssociateS3ResourcesOutputResponse, AssociateS3ResourcesOutputError>(xAmzTarget: "MacieService.AssociateS3Resources"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Removes the specified member account from Amazon Macie Classic.
    public func disassociateMemberAccount(input: DisassociateMemberAccountInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateMemberAccountOutputResponse, DisassociateMemberAccountOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "disassociateMemberAccount")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DisassociateMemberAccountInput, DisassociateMemberAccountOutputResponse, DisassociateMemberAccountOutputError>(id: "disassociateMemberAccount")
        operation.initializeStep.intercept(position: .after, middleware: DisassociateMemberAccountInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: DisassociateMemberAccountInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DisassociateMemberAccountInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DisassociateMemberAccountInput, DisassociateMemberAccountOutputResponse, DisassociateMemberAccountOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: DisassociateMemberAccountInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DisassociateMemberAccountInput, DisassociateMemberAccountOutputResponse, DisassociateMemberAccountOutputError>(xAmzTarget: "MacieService.DisassociateMemberAccount"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Removes specified S3 resources from being monitored by Amazon Macie Classic. If
    ///       memberAccountId isn't specified, the action removes specified S3 resources from Macie Classic
    ///       for the current Macie Classic administrator account. If memberAccountId is specified, the action removes specified
    ///       S3 resources from Macie Classic for the specified member account.
    public func disassociateS3Resources(input: DisassociateS3ResourcesInput, completion: @escaping (ClientRuntime.SdkResult<DisassociateS3ResourcesOutputResponse, DisassociateS3ResourcesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "disassociateS3Resources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DisassociateS3ResourcesInput, DisassociateS3ResourcesOutputResponse, DisassociateS3ResourcesOutputError>(id: "disassociateS3Resources")
        operation.initializeStep.intercept(position: .after, middleware: DisassociateS3ResourcesInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: DisassociateS3ResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DisassociateS3ResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DisassociateS3ResourcesInput, DisassociateS3ResourcesOutputResponse, DisassociateS3ResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: DisassociateS3ResourcesInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DisassociateS3ResourcesInput, DisassociateS3ResourcesOutputResponse, DisassociateS3ResourcesOutputError>(xAmzTarget: "MacieService.DisassociateS3Resources"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Lists all Amazon Macie Classic member accounts for the current Macie Classic administrator account.
    public func listMemberAccounts(input: ListMemberAccountsInput, completion: @escaping (ClientRuntime.SdkResult<ListMemberAccountsOutputResponse, ListMemberAccountsOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listMemberAccounts")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListMemberAccountsInput, ListMemberAccountsOutputResponse, ListMemberAccountsOutputError>(id: "listMemberAccounts")
        operation.initializeStep.intercept(position: .after, middleware: ListMemberAccountsInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ListMemberAccountsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListMemberAccountsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListMemberAccountsInput, ListMemberAccountsOutputResponse, ListMemberAccountsOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: ListMemberAccountsInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListMemberAccountsInput, ListMemberAccountsOutputResponse, ListMemberAccountsOutputError>(xAmzTarget: "MacieService.ListMemberAccounts"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Lists all the S3 resources associated with Amazon Macie Classic. If memberAccountId
    ///       isn't specified, the action lists the S3 resources associated with Macie Classic for
    ///       the current Macie Classic administrator account. If memberAccountId is specified, the action lists the S3 resources
    ///       associated with Macie Classic for the specified member account.
    public func listS3Resources(input: ListS3ResourcesInput, completion: @escaping (ClientRuntime.SdkResult<ListS3ResourcesOutputResponse, ListS3ResourcesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listS3Resources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListS3ResourcesInput, ListS3ResourcesOutputResponse, ListS3ResourcesOutputError>(id: "listS3Resources")
        operation.initializeStep.intercept(position: .after, middleware: ListS3ResourcesInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ListS3ResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListS3ResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListS3ResourcesInput, ListS3ResourcesOutputResponse, ListS3ResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: ListS3ResourcesInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ListS3ResourcesInput, ListS3ResourcesOutputResponse, ListS3ResourcesOutputError>(xAmzTarget: "MacieService.ListS3Resources"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Updates the classification types for the specified S3 resources. If memberAccountId
    ///       isn't specified, the action updates the classification types of the S3 resources associated
    ///       with Amazon Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified, the
    ///       action updates the classification types of the S3 resources associated with Macie
    ///       Classic for the specified member account.
    public func updateS3Resources(input: UpdateS3ResourcesInput, completion: @escaping (ClientRuntime.SdkResult<UpdateS3ResourcesOutputResponse, UpdateS3ResourcesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateS3Resources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "macie")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateS3ResourcesInput, UpdateS3ResourcesOutputResponse, UpdateS3ResourcesOutputError>(id: "updateS3Resources")
        operation.initializeStep.intercept(position: .after, middleware: UpdateS3ResourcesInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: UpdateS3ResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: UpdateS3ResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateS3ResourcesInput, UpdateS3ResourcesOutputResponse, UpdateS3ResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .after, middleware: UpdateS3ResourcesInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateS3ResourcesInput, UpdateS3ResourcesOutputResponse, UpdateS3ResourcesOutputError>(xAmzTarget: "MacieService.UpdateS3Resources"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
