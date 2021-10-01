// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SageMakerRuntimeClient {
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "SageMaker Runtime"
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
        let config = try SageMakerRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class SageMakerRuntimeClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

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
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("SageMakerRuntimeClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct SageMakerRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SageMakerRuntimeClient"
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

extension SageMakerRuntimeClient: SageMakerRuntimeClientProtocol {
    /// After you deploy a model into production using Amazon SageMaker hosting services, your
    ///             client applications use this API to get inferences from the model hosted at the
    ///             specified endpoint.
    ///         For an overview of Amazon SageMaker, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html">How It Works.
    ///         Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add
    ///             additional headers. You should not rely on the behavior of headers outside those
    ///             enumerated in the request syntax.
    ///         Calls to InvokeEndpoint are authenticated by using AWS Signature Version
    ///             4. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating
    ///                 Requests (AWS Signature Version 4) in the Amazon S3 API
    ///                 Reference.
    ///         A customer's model containers must respond to requests within 60 seconds. The model
    ///             itself can have a maximum processing time of 60 seconds before responding to
    ///             invocations. If your model is going to take 50-60 seconds of processing time, the SDK
    ///             socket timeout should be set to be 70 seconds.
    ///
    ///             Endpoints are scoped to an individual account, and are not public. The URL does
    ///                 not contain the account ID, but Amazon SageMaker determines the account ID from the
    ///                 authentication token that is supplied by the caller.
    ///
    public func invokeEndpoint(input: InvokeEndpointInput, completion: @escaping (ClientRuntime.SdkResult<InvokeEndpointOutputResponse, InvokeEndpointOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "invokeEndpoint")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<InvokeEndpointInput, InvokeEndpointOutputResponse, InvokeEndpointOutputError>(id: "invokeEndpoint")
        operation.initializeStep.intercept(position: .after, middleware: InvokeEndpointInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<InvokeEndpointInput, InvokeEndpointOutputResponse, InvokeEndpointOutputError>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// After you deploy a model into production using Amazon SageMaker hosting services,
    ///             your client applications use this API to get inferences from the model hosted at
    ///             the specified endpoint in an asynchronous manner.
    ///
    ///         Inference requests sent to this API are enqueued for asynchronous processing.
    ///             The processing of the inference request may or may not complete before the
    ///             you receive a response from this API. The response from this API will
    ///             not contain the result of the inference request but contain information
    ///             about where you can locate it.
    ///
    ///         Amazon SageMaker strips all POST headers except those supported by the API.
    ///             Amazon SageMaker might add additional headers. You should not rely on the behavior
    ///             of headers outside those enumerated in the request syntax.
    ///
    ///         Calls to InvokeEndpointAsync are authenticated by using AWS Signature
    ///             Version 4. For information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests (AWS Signature Version 4) in the Amazon S3 API
    ///                 Reference.
    public func invokeEndpointAsync(input: InvokeEndpointAsyncInput, completion: @escaping (ClientRuntime.SdkResult<InvokeEndpointAsyncOutputResponse, InvokeEndpointAsyncOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "invokeEndpointAsync")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<InvokeEndpointAsyncInput, InvokeEndpointAsyncOutputResponse, InvokeEndpointAsyncOutputError>(id: "invokeEndpointAsync")
        operation.initializeStep.intercept(position: .after, middleware: InvokeEndpointAsyncInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointAsyncInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointAsyncInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<InvokeEndpointAsyncInput, InvokeEndpointAsyncOutputResponse, InvokeEndpointAsyncOutputError>(contentType: "application/json"))
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
