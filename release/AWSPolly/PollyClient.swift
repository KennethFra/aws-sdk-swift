// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class PollyClient {
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Polly"
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
        let config = try PollyClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class PollyClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

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
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("PollyClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct PollyClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "PollyClient"
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

extension PollyClient: PollyClientProtocol {
    /// Deletes the specified pronunciation lexicon stored in an Amazon Web Services Region. A lexicon which has been deleted is not available for
    ///       speech synthesis, nor is it possible to retrieve it using either the
    ///         GetLexicon or ListLexicon APIs.
    ///          For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    public func deleteLexicon(input: DeleteLexiconInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLexiconOutputResponse, DeleteLexiconOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteLexicon")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteLexiconInput, DeleteLexiconOutputResponse, DeleteLexiconOutputError>(id: "deleteLexicon")
        operation.initializeStep.intercept(position: .after, middleware: DeleteLexiconInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: DeleteLexiconInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DeleteLexiconInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DeleteLexiconInput, DeleteLexiconOutputResponse, DeleteLexiconOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Returns the list of voices that are available for use when
    ///       requesting speech synthesis. Each voice speaks a specified language, is
    ///       either male or female, and is identified by an ID, which is the ASCII
    ///       version of the voice name.
    ///
    ///          When synthesizing speech ( SynthesizeSpeech ), you
    ///       provide the voice ID for the voice you want from the list of voices
    ///       returned by DescribeVoices.
    ///
    ///          For example, you want your news reader application to read news in
    ///       a specific language, but giving a user the option to choose the voice.
    ///       Using the DescribeVoices operation you can provide the user
    ///       with a list of available voices to select from.
    ///
    ///           You can optionally specify a language code to filter the available
    ///       voices. For example, if you specify en-US, the operation
    ///       returns a list of all available US English voices.
    ///          This operation requires permissions to perform the
    ///         polly:DescribeVoices action.
    public func describeVoices(input: DescribeVoicesInput, completion: @escaping (ClientRuntime.SdkResult<DescribeVoicesOutputResponse, DescribeVoicesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeVoices")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DescribeVoicesInput, DescribeVoicesOutputResponse, DescribeVoicesOutputError>(id: "describeVoices")
        operation.initializeStep.intercept(position: .after, middleware: DescribeVoicesInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: DescribeVoicesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DescribeVoicesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeVoicesInput, DescribeVoicesOutputResponse, DescribeVoicesOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Returns the content of the specified pronunciation lexicon stored
    ///       in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    public func getLexicon(input: GetLexiconInput, completion: @escaping (ClientRuntime.SdkResult<GetLexiconOutputResponse, GetLexiconOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getLexicon")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetLexiconInput, GetLexiconOutputResponse, GetLexiconOutputError>(id: "getLexicon")
        operation.initializeStep.intercept(position: .after, middleware: GetLexiconInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: GetLexiconInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetLexiconInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetLexiconInput, GetLexiconOutputResponse, GetLexiconOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Retrieves a specific SpeechSynthesisTask object based on its TaskID.
    ///       This object contains information about the given speech synthesis task,
    ///       including the status of the task, and a link to the S3 bucket containing
    ///       the output of the task.
    public func getSpeechSynthesisTask(input: GetSpeechSynthesisTaskInput, completion: @escaping (ClientRuntime.SdkResult<GetSpeechSynthesisTaskOutputResponse, GetSpeechSynthesisTaskOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getSpeechSynthesisTask")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetSpeechSynthesisTaskInput, GetSpeechSynthesisTaskOutputResponse, GetSpeechSynthesisTaskOutputError>(id: "getSpeechSynthesisTask")
        operation.initializeStep.intercept(position: .after, middleware: GetSpeechSynthesisTaskInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: GetSpeechSynthesisTaskInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetSpeechSynthesisTaskInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetSpeechSynthesisTaskInput, GetSpeechSynthesisTaskOutputResponse, GetSpeechSynthesisTaskOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Returns a list of pronunciation lexicons stored in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    public func listLexicons(input: ListLexiconsInput, completion: @escaping (ClientRuntime.SdkResult<ListLexiconsOutputResponse, ListLexiconsOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listLexicons")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListLexiconsInput, ListLexiconsOutputResponse, ListLexiconsOutputError>(id: "listLexicons")
        operation.initializeStep.intercept(position: .after, middleware: ListLexiconsInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ListLexiconsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListLexiconsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListLexiconsInput, ListLexiconsOutputResponse, ListLexiconsOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Returns a list of SpeechSynthesisTask objects ordered by their
    ///       creation date. This operation can filter the tasks by their status, for
    ///       example, allowing users to list only tasks that are completed.
    public func listSpeechSynthesisTasks(input: ListSpeechSynthesisTasksInput, completion: @escaping (ClientRuntime.SdkResult<ListSpeechSynthesisTasksOutputResponse, ListSpeechSynthesisTasksOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listSpeechSynthesisTasks")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListSpeechSynthesisTasksInput, ListSpeechSynthesisTasksOutputResponse, ListSpeechSynthesisTasksOutputError>(id: "listSpeechSynthesisTasks")
        operation.initializeStep.intercept(position: .after, middleware: ListSpeechSynthesisTasksInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ListSpeechSynthesisTasksInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListSpeechSynthesisTasksInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ListSpeechSynthesisTasksInput, ListSpeechSynthesisTasksOutputResponse, ListSpeechSynthesisTasksOutputError>(contentType: "application/json"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Stores a pronunciation lexicon in an Amazon Web Services Region. If
    ///       a lexicon with the same name already exists in the region, it is
    ///       overwritten by the new lexicon. Lexicon operations have eventual
    ///       consistency, therefore, it might take some time before the lexicon is
    ///       available to the SynthesizeSpeech operation.
    ///          For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons.
    public func putLexicon(input: PutLexiconInput, completion: @escaping (ClientRuntime.SdkResult<PutLexiconOutputResponse, PutLexiconOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putLexicon")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PutLexiconInput, PutLexiconOutputResponse, PutLexiconOutputError>(id: "putLexicon")
        operation.initializeStep.intercept(position: .after, middleware: PutLexiconInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: PutLexiconInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: PutLexiconInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutLexiconInput, PutLexiconOutputResponse, PutLexiconOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: PutLexiconInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Allows the creation of an asynchronous synthesis task, by starting a
    ///       new SpeechSynthesisTask. This operation requires all the
    ///       standard information needed for speech synthesis, plus the name of an
    ///       Amazon S3 bucket for the service to store the output of the synthesis task
    ///       and two optional parameters (OutputS3KeyPrefix and
    ///         SnsTopicArn). Once the synthesis task is created, this
    ///       operation will return a SpeechSynthesisTask object, which
    ///       will include an identifier of this task as well as the current status. The
    ///         SpeechSynthesisTask object is available for 72 hours after
    ///       starting the asynchronous synthesis task.
    public func startSpeechSynthesisTask(input: StartSpeechSynthesisTaskInput, completion: @escaping (ClientRuntime.SdkResult<StartSpeechSynthesisTaskOutputResponse, StartSpeechSynthesisTaskOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startSpeechSynthesisTask")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<StartSpeechSynthesisTaskInput, StartSpeechSynthesisTaskOutputResponse, StartSpeechSynthesisTaskOutputError>(id: "startSpeechSynthesisTask")
        operation.initializeStep.intercept(position: .after, middleware: StartSpeechSynthesisTaskInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: StartSpeechSynthesisTaskInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: StartSpeechSynthesisTaskInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartSpeechSynthesisTaskInput, StartSpeechSynthesisTaskOutputResponse, StartSpeechSynthesisTaskOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: StartSpeechSynthesisTaskInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
    ///       SSML input must be valid, well-formed SSML. Some alphabets might not be
    ///       available with all the voices (for example, Cyrillic might not be read at
    ///       all by English voices) unless phoneme mapping is used. For more
    ///       information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html">How it Works.
    public func synthesizeSpeech(input: SynthesizeSpeechInput, completion: @escaping (ClientRuntime.SdkResult<SynthesizeSpeechOutputResponse, SynthesizeSpeechOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "synthesizeSpeech")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "polly")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<SynthesizeSpeechInput, SynthesizeSpeechOutputResponse, SynthesizeSpeechOutputError>(id: "synthesizeSpeech")
        operation.initializeStep.intercept(position: .after, middleware: SynthesizeSpeechInputURLPathMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: SynthesizeSpeechInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: SynthesizeSpeechInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<SynthesizeSpeechInput, SynthesizeSpeechOutputResponse, SynthesizeSpeechOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: SynthesizeSpeechInputBodyMiddleware())
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
