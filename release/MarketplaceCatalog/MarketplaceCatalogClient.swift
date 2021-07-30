// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceCatalogClient {
    let client: SdkHttpClient
    let config: AWSClientConfiguration
    let serviceName = "Marketplace Catalog"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: AWSClientConfiguration) {
        client = SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: String? = nil) throws {
        let unwrappedRegion = region ?? "us-east-1"
        let config = try MarketplaceCatalogClientConfiguration(region: unwrappedRegion)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class MarketplaceCatalogClientConfiguration: AWSClientConfiguration {

        public var clientLogMode: ClientLogMode
        public var decoder: ResponseDecoder?
        public var encoder: RequestEncoder?
        public var httpClientConfiguration: HttpClientConfiguration
        public var httpClientEngine: HttpClientEngine
        public var idempotencyTokenGenerator: IdempotencyTokenGenerator
        public var logger: LogAgent
        public var retrier: Retrier

        public var credentialsProvider: AWSCredentialsProvider
        public var endpointResolver: EndpointResolver
        public var region: String
        public var signingRegion: String

        public init(
            credentialsProvider: AWSCredentialsProvider? = nil,
            endpointResolver: EndpointResolver? = nil,
            region: String,
            signingRegion: String? = nil,
            runtimeConfig: SDKRuntimeConfiguration
        ) throws {
            self.region = region
            self.signingRegion = signingRegion ?? region
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = credProvider
            } else {
                self.credentialsProvider = try AWSCredentialsProvider.fromChain()
            }
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retrier = runtimeConfig.retrier
        }

        public convenience init(
            credentialsProvider: AWSCredentialsProvider? = nil,
            endpointResolver: EndpointResolver? = nil,
            region: String,
            signingRegion: String? = nil
        ) throws {
            let defaultRuntimeConfig = try DefaultSDKRuntimeConfiguration("MarketplaceCatalogClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct MarketplaceCatalogClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "MarketplaceCatalogClient"
    let logLevel: SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MarketplaceCatalogClient: MarketplaceCatalogClientProtocol {
    /// <p>Used to cancel an open change request. Must be sent before the status of the request
    ///             changes to <code>APPLYING</code>, the final stage of completing your change request. You
    ///             can describe a change during the 60-day request history retention period for API
    ///             calls.</p>
    public func cancelChangeSet(input: CancelChangeSetInput, completion: @escaping (SdkResult<CancelChangeSetOutputResponse, CancelChangeSetOutputError>) -> Void)
    {
        let urlPath = "/CancelChangeSet"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .patch)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "cancelChangeSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "catalog.marketplace.\(config.region).amazonaws.com")
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CancelChangeSetInput, CancelChangeSetOutputResponse, CancelChangeSetOutputError>(id: "cancelChangeSet")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: CancelChangeSetInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CancelChangeSetInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CancelChangeSetInput, CancelChangeSetOutputResponse, CancelChangeSetOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Provides information about a given change set.</p>
    public func describeChangeSet(input: DescribeChangeSetInput, completion: @escaping (SdkResult<DescribeChangeSetOutputResponse, DescribeChangeSetOutputError>) -> Void)
    {
        let urlPath = "/DescribeChangeSet"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeChangeSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "catalog.marketplace.\(config.region).amazonaws.com")
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeChangeSetInput, DescribeChangeSetOutputResponse, DescribeChangeSetOutputError>(id: "describeChangeSet")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeChangeSetInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeChangeSetInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeChangeSetInput, DescribeChangeSetOutputResponse, DescribeChangeSetOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns the metadata and content of the entity.</p>
    public func describeEntity(input: DescribeEntityInput, completion: @escaping (SdkResult<DescribeEntityOutputResponse, DescribeEntityOutputError>) -> Void)
    {
        let urlPath = "/DescribeEntity"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeEntity")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "catalog.marketplace.\(config.region).amazonaws.com")
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeEntityInput, DescribeEntityOutputResponse, DescribeEntityOutputError>(id: "describeEntity")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeEntityInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeEntityInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeEntityInput, DescribeEntityOutputResponse, DescribeEntityOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns the list of change sets owned by the account being used to make the call. You
    ///             can filter this list by providing any combination of <code>entityId</code>,
    ///                 <code>ChangeSetName</code>, and status. If you provide more than one filter, the API
    ///             operation applies a logical AND between the filters.</p>
    ///
    ///         <p>You can describe a change during the 60-day request history retention period for API
    ///             calls.</p>
    public func listChangeSets(input: ListChangeSetsInput, completion: @escaping (SdkResult<ListChangeSetsOutputResponse, ListChangeSetsOutputError>) -> Void)
    {
        let urlPath = "/ListChangeSets"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listChangeSets")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "catalog.marketplace.\(config.region).amazonaws.com")
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListChangeSetsInput, ListChangeSetsOutputResponse, ListChangeSetsOutputError>(id: "listChangeSets")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListChangeSetsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListChangeSetsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListChangeSetsInput, ListChangeSetsOutputResponse, ListChangeSetsOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: ListChangeSetsInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Provides the list of entities of a given type.</p>
    public func listEntities(input: ListEntitiesInput, completion: @escaping (SdkResult<ListEntitiesOutputResponse, ListEntitiesOutputError>) -> Void)
    {
        let urlPath = "/ListEntities"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listEntities")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "catalog.marketplace.\(config.region).amazonaws.com")
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListEntitiesInput, ListEntitiesOutputResponse, ListEntitiesOutputError>(id: "listEntities")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListEntitiesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListEntitiesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListEntitiesInput, ListEntitiesOutputResponse, ListEntitiesOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: ListEntitiesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>This operation allows you to request changes for your entities. Within a single
    ///             ChangeSet, you cannot start the same change type against the same entity multiple times.
    ///             Additionally, when a ChangeSet is running, all the entities targeted by the different
    ///             changes are locked until the ChangeSet has completed (either succeeded, cancelled, or failed). If
    ///             you try to start a ChangeSet containing a change against an entity that is already
    ///             locked, you will receive a <code>ResourceInUseException</code>.</p>
    ///
    ///         <p>For example, you cannot start the ChangeSet described in the <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples">example</a> later in this topic, because it contains two changes to execute the same change
    ///             type (<code>AddRevisions</code>) against the same entity
    ///             (<code>entity-id@1)</code>.</p>
    ///
    ///         <p>For more information about working with change sets, see <a href="https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets">
    ///             Working with change sets</a>.</p>
    public func startChangeSet(input: StartChangeSetInput, completion: @escaping (SdkResult<StartChangeSetOutputResponse, StartChangeSetOutputError>) -> Void)
    {
        let urlPath = "/StartChangeSet"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startChangeSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "catalog.marketplace.\(config.region).amazonaws.com")
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartChangeSetInput, StartChangeSetOutputResponse, StartChangeSetOutputError>(id: "startChangeSet")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: StartChangeSetInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartChangeSetInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartChangeSetInput, StartChangeSetOutputResponse, StartChangeSetOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: StartChangeSetInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
